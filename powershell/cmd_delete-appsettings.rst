Delete-AppSettings Commands
===========================

This page contains details on **Delete-AppSettings** commands.

Delete-AppSettings
-------------------------


NAME
    Delete-AppSettings
    
SYNOPSIS
    Deletes the application settings of an installed application.
    
    
SYNTAX
    Delete-AppSettings [-deviceId] <String> [-appId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Deletes the application settings of an installed application.
    

PARAMETERS
    -deviceId <String>
        The device identifier
        
    -appId <String>
        The application identifier
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Delete-AppSettings -appId "demo.quamotion.Acquaint" -deviceId "$iPhone6"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Delete-AppSettings -examples".
    For more information, type: "get-help Delete-AppSettings -detailed".
    For technical information, type: "get-help Delete-AppSettings -full".




