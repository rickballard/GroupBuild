# ♦ DO_GB_SyncMegaWaves_ToRepo_v1
param(
    [string]$GroupBuildRepo = "$HOME\Documents\GitHub\GroupBuild",
    [string]$W1Root         = "$HOME\Documents\GitHub\GroupBuild_MegaWave_W1",
    [string]$W2Root         = "$HOME\Documents\GitHub\GroupBuild_MegaWave_W2",
    [string]$W3Root         = "$HOME\Documents\GitHub\GroupBuild_MegaWave_W3",
    [string]$W4Root         = "$HOME\Documents\GitHub\GroupBuild_MegaWave_W4"
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if (-not (Test-Path $GroupBuildRepo)) {
    throw "GroupBuild repo not found at $GroupBuildRepo"
}

function Ensure-Dir {
    param([string]$Path)
    if (-not (Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

$docsRoot = Join-Path $GroupBuildRepo 'docs\gb'
Ensure-Dir $docsRoot

$map = @(
    @{ SourceRoot = Join-Path $W1Root 'docs\positioning'; Dest = Join-Path $docsRoot 'positioning' },
    @{ SourceRoot = Join-Path $W1Root 'docs\web';         Dest = Join-Path $docsRoot 'web' },
    @{ SourceRoot = Join-Path $W1Root 'product';          Dest = Join-Path $docsRoot 'product' },
    @{ SourceRoot = Join-Path $W1Root 'ops';              Dest = Join-Path $docsRoot 'ops' },

    @{ SourceRoot = Join-Path $W2Root 'product';          Dest = Join-Path $docsRoot 'product' },
    @{ SourceRoot = Join-Path $W2Root 'ops';              Dest = Join-Path $docsRoot 'ops' },

    @{ SourceRoot = Join-Path $W3Root 'outreach';         Dest = Join-Path $docsRoot 'outreach' },
    @{ SourceRoot = Join-Path $W3Root 'community';        Dest = Join-Path $docsRoot 'community' },
    @{ SourceRoot = Join-Path $W3Root 'monetization';     Dest = Join-Path $docsRoot 'ops' },
    @{ SourceRoot = Join-Path $W3Root 'risk';             Dest = Join-Path $docsRoot 'risk' },
    @{ SourceRoot = Join-Path $W3Root 'arch';             Dest = Join-Path $docsRoot 'arch' },

    @{ SourceRoot = Join-Path $W4Root 'docs';             Dest = $docsRoot },
    @{ SourceRoot = Join-Path $W4Root 'ops';              Dest = Join-Path $docsRoot 'ops' }
)

foreach ($entry in $map) {
    $src = $entry.SourceRoot
    $dst = $entry.Dest
    if (-not (Test-Path $src)) { continue }
    Ensure-Dir $dst
    Write-Host "Syncing $src -> $dst"
    Copy-Item -Path (Join-Path $src '*') -Destination $dst -Recurse -Force
}

# index HTML (if present)
$indexHtml = Join-Path $W2Root 'web\index_GB_ReinventCircles_v1.html'
if (Test-Path $indexHtml) {
    $webDestDir = Join-Path $GroupBuildRepo 'web'
    Ensure-Dir $webDestDir
    $destIndex = Join-Path $webDestDir 'index_GB_ReinventCircles_v1.html'
    Write-Host "Copying index HTML -> $destIndex"
    Copy-Item -Path $indexHtml -Destination $destIndex -Force
}

# Place this script into the repo tools folder if not already there
$self = $MyInvocation.MyCommand.Path
if ($self -and (Test-Path $self)) {
    $toolsDir = Join-Path $GroupBuildRepo 'tools'
    Ensure-Dir $toolsDir
    $destScript = Join-Path $toolsDir 'DO_GB_SyncMegaWaves_ToRepo_v1.ps1'
    if (-not (Test-Path $destScript)) {
        Copy-Item -Path $self -Destination $destScript -Force
    }
}

Write-Host "Sync complete. Review changes in $GroupBuildRepo before committing."
