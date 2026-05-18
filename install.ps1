#Requires -Version 5.1

$targetDir = Read-Host "Enter the target directory (e.g. C:\tank-royale)"

if ([string]::IsNullOrWhiteSpace($targetDir)) {
    Write-Error "No directory specified. Aborting."
    exit 1
}

$sourceDir = Join-Path $PSScriptRoot "sounds"
$destDir   = Join-Path $targetDir "sounds"

if (-not (Test-Path $sourceDir)) {
    Write-Error "Source directory not found: $sourceDir"
    exit 1
}

if (-not (Test-Path $targetDir)) {
    Write-Error "Target directory does not exist: $targetDir"
    exit 1
}

Write-Host "Copying sounds to: $destDir"
Copy-Item -Path $sourceDir -Destination $destDir -Recurse -Force
Write-Host "Done."
