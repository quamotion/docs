Get-DiskInfo Commands
=========================

This page contains details on **Get-DiskInfo** commands.

Get-DiskInfo
-------------------------


NAME
    Get-DiskInfo
    
SYNOPSIS
    Gets the disk info of a device.
    
    
SYNTAX
    Get-DiskInfo [-deviceId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the disk info of a device.
    Returns: the disk info of a device.
    

PARAMETERS
    -deviceId <String>
        The device identifier.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-DiskInfo -deviceId $iPhone6
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-DiskInfo -examples".
    For more information, type: "get-help Get-DiskInfo -detailed".
    For technical information, type: "get-help Get-DiskInfo -full".




