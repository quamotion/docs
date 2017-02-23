Uninstall-App Commands
=========================

This page contains details on **Uninstall-App** commands.

Uninstall-App
-------------------------


NAME
    Uninstall-App
    
SYNOPSIS
    Uninstalls an application from a device.
    
    
SYNTAX
    Uninstall-App [-deviceId] <String> [-appId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Uninstalls an application from a device.
    

PARAMETERS
    -deviceId <String>
        The identifier of the device.
        
    -appId <String>
        The identifier of the application.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Uninstall-App -deviceId $iPhone6 -appId "demo.quamotion.Acquaint"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Uninstall-App -examples".
    For more information, type: "get-help Uninstall-App -detailed".
    For technical information, type: "get-help Uninstall-App -full".




