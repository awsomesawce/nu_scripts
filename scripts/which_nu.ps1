#!/usr/bin/env pwsh
# find nu

function Find-NUshell {
    <#
    .SYNOPSIS
    Find nushell binary location
    #>
    param (
        [Parameter()]
        [switch]
        $ReturnString
    )
    if (!(gcm nu -ea ignore)) {
        Write-Error -Message "Nushell binary not found" -Category NotInstalled
        throw
    }
    if ($ReturnString) {
    return (Get-Command nu).Source
    }
    return Get-Command nu

}