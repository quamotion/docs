ConnectTo-Quamotion Commands
============================

This page contains details on **ConnectTo-Quamotion** commands.

ConnectTo-Quamotion
-------------------------


NAME
    ConnectTo-Quamotion
    
SYNOPSIS
    Connects to a remote WebDriver instance.
    
    
SYNTAX
    ConnectTo-Quamotion [[-at] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Connects to a remote WebDriver instance. The commands are forwared to the given remote url.
    

PARAMETERS
    -at <String>
        The url of the remote WebDriver instance.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>ConnectTo-Quamotion -at http://qmwdjpn.quamotion.mobi/wd/hub
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help ConnectTo-Quamotion -examples".
    For more information, type: "get-help ConnectTo-Quamotion -detailed".
    For technical information, type: "get-help ConnectTo-Quamotion -full".




