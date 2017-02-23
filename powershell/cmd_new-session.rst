New-Session Commands
=========================

This page contains details on **New-Session** commands.

New-Session
-------------------------


NAME
    New-Session
    
SYNOPSIS
    Create a new session.
    
    
SYNTAX
    New-Session [[-appVersion] <String>] [[-clearAppSettings] <Boolean>] [[-reinstallApplication] <Boolean>] 
    [[-reuseExistingSession] <Boolean>] [<CommonParameters>]
    
    
DESCRIPTION
    Create a new session. The session will install and launch the application on the device.
    

PARAMETERS
    -appVersion <String>
        The version of the application to be used.
        The version can be queried by perfoming the Get-App commmand or by clicking on the application in the frontend.
        
    -clearAppSettings <Boolean>
        Indicates whether the application settions should be cleared before installing the application.
        
    -reinstallApplication <Boolean>
        Indicates whether the application should reinstalled.
        
    -reuseExistingSession <Boolean>
        Indicates whether an existing session should be reused. 
        A session is only reused when the appId, appVersion and deviceId are equal
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>New-Session -appId demo.quamotion.Acquaint -appVersion "1.51" -deviceId $iPhone6 -reuseExistingSession $true
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help New-Session -examples".
    For more information, type: "get-help New-Session -detailed".
    For technical information, type: "get-help New-Session -full".




