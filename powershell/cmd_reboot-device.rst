Reboot-Device Commands
=========================

This page contains details on **Reboot-Device** commands.

Reboot-Device
-------------------------


NAME
    Reboot-Device
    
SYNOPSIS
    Reboots a device.
    
    
SYNTAX
    Reboot-Device [-deviceId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Reboots a device.
    

PARAMETERS
    -deviceId <String>
        The device identifier
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Reboot-Device -deviceId $iPhone6
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Reboot-Device -examples".
    For more information, type: "get-help Reboot-Device -detailed".
    For technical information, type: "get-help Reboot-Device -full".




