# Requires -Version 3.0
# A script to prepare the build/run environment for the devcontainer.

$ErrorActionPreference = 'Stop'

# Make sure we're in the root of the repository.
Set-Location "$PSScriptRoot/../../"

# Make sure the .env file exists for the devcontainer to load.
if (!(Test-Path -PathType Leaf '.devcontainer/.env')) {
    Write-Host "Creating empty .env file for devcontainer."
    New-Item -ErrorAction SilentlyContinue -Type File -Name '.devcontainer/.env'
}

# Check if the .npmrc file exists in the local home directory, if not- then it is created
if (!(Test-Path -PathType Leaf '${HOME}/.npmrc')) {
    Write-Host "Creating empty .npmrc file for devcontainer."
    New-Item -ErrorAction SilentlyContinue -Type File -Name '${HOME}/.npmrc'
}
