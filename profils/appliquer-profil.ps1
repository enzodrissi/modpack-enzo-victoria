# Applique un profil (enzo ou victoria) a l'instance. Lancer avec le jeu ferme.
# Les reglages du profil remplacent ceux d'options.txt ; touches, volume et langue sont gardes.
param([Parameter(Mandatory)][ValidateSet('enzo','victoria')][string]$Nom)
$ErrorActionPreference = 'Stop'
$mc = Split-Path $PSScriptRoot -Parent
foreach ($src in "$PSScriptRoot\commun", "$PSScriptRoot\$Nom") {
    Get-ChildItem $src -Recurse -File | Where-Object Name -ne 'options.txt' | ForEach-Object {
        $dest = Join-Path $mc $_.FullName.Substring($src.Length + 1)
        New-Item -ItemType Directory -Force (Split-Path $dest) | Out-Null
        Copy-Item $_.FullName $dest -Force
    }
}
$opts = Join-Path $mc 'options.txt'
$lines = [System.Collections.Generic.List[string]]@()
if (Test-Path $opts) { $lines.AddRange([IO.File]::ReadAllLines($opts)) }
foreach ($l in Get-Content "$PSScriptRoot\$Nom\options.txt") {
    $key = $l.Split(':')[0]
    $i = $lines.FindIndex({ param($x) $x.StartsWith("${key}:") })
    if ($i -ge 0) { $lines[$i] = $l } else { $lines.Add($l) }
}
[IO.File]::WriteAllLines($opts, $lines)
Write-Host "Profil $Nom applique."
