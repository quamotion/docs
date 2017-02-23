Get-BatteryInfo Commands
=========================

This page contains details on **Get-BatteryInfo** commands.

Get-BatteryInfo
-------------------------


NAME
    Get-BatteryInfo
    
SYNOPSIS
    Gets the battery info of a device.
    
    
SYNTAX
    Get-BatteryInfo [-deviceId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the battery info of a device.
    Returns: the battery info of a device.
    

PARAMETERS
    -deviceId <String>
        The device identifier.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-BatteryInfo -deviceId $iPhone6
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-BatteryInfo -examples".
    For more information, type: "get-help Get-BatteryInfo -detailed".
    For technical information, type: "get-help Get-BatteryInfo -full".




