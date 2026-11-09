#!/usr/bin/env bash
# Chunky watchdog for enzo-victoria-mc. Run from server/ during pregeneration: bash chunky-watchdog.sh
# Works around a server-thread livelock in ChunkMap.processUnloads (1.21.1 modpack):
# if Chunky makes < MIN_CHUNKS in WINDOW minutes -> pause, save-all, restart, Chunky resumes.
# When the overworld finishes, starts the Nether (radius 1500). Exits when the Nether is done.
# ponytail: restart-based workaround, find the culprit mod if stalls also hit normal play.
export MSYS_NO_PATHCONV=1
C=enzo-victoria-mc
DIR="$(cd "$(dirname "$0")" && pwd)"
MIN_CHUNKS=1000
WINDOW=10   # minutes, sampled every minute
rcon() { docker exec "$C" rcon-cli "$@" 2>&1 | sed 's/\x1b\[[0-9;]*[A-Za-z]//g' | head -1; }
log() { echo "$(date '+%F %H:%M') $*"; }

restart() {
  log "STALL ($1) -> restart"
  rcon chunky pause >/dev/null; rcon save-all >/dev/null
  (cd "$DIR" && docker compose restart mc >/dev/null 2>&1)
  for _ in $(seq 1 60); do
    docker logs --since 5m "$C" 2>&1 | grep -q 'Task continuing' && break
    sleep 5
  done
  log "restarted: $(rcon chunky progress)"
}

samples=()
restarts=0
while true; do
  p=$(rcon chunky progress)
  if echo "$p" | grep -qi 'no tasks'; then
    sleep 30; p=$(rcon chunky progress)   # not a restart blip?
    if echo "$p" | grep -qi 'no tasks'; then
      if [ "${phase:-overworld}" = overworld ]; then
        log "OVERWORLD DONE (restarts: $restarts) -> starting Nether"
        rcon chunky world minecraft:the_nether; rcon chunky radius 1500; rcon chunky start
        phase=nether; samples=(); sleep 60; continue
      fi
      log "NETHER DONE (restarts: $restarts)"; rcon neoforge tps; exit 0
    fi
  fi
  echo "$p" | grep -q 'the_nether' && phase=nether
  n=$(echo "$p" | grep -oE 'Processed: [0-9]+' | grep -oE '[0-9]+')
  [ -n "$n" ] && samples+=("$n")
  if [ ${#samples[@]} -gt $WINDOW ]; then
    samples=("${samples[@]: -$((WINDOW + 1))}")
    delta=$(( samples[WINDOW] - samples[0] ))
    if [ $delta -lt $MIN_CHUNKS ]; then
      restarts=$((restarts + 1)); restart "$delta chunks in ${WINDOW} min at $n"; samples=()
    fi
  fi
  [ $(( 10#$(date +%M) % 10 )) -eq 0 ] && log "$p"
  sleep 60
done
