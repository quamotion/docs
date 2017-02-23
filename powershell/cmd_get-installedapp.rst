Get-InstalledApp Commands
=========================

This page contains details on **Get-InstalledApp** commands.

Get-InstalledApp
-------------------------


NAME
    Get-InstalledApp
    
SYNOPSIS
    Gets all installed applications on the device.
    
    
SYNTAX
    Get-InstalledApp [-deviceId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets all installed applications on the device.
    

PARAMETERS
    -deviceId <String>
        The identifier of the device.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-InstalledApp -deviceId $iPhone6
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-InstalledApp -examples".
    For more information, type: "get-help Get-InstalledApp -detailed".
    For technical information, type: "get-help Get-InstalledApp -full".




