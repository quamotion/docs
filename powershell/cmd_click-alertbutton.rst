Click-AlertButton Commands
=========================

This page contains details on **Click-AlertButton** commands.

Click-AlertButton
-------------------------


NAME
    Click-AlertButton
    
SYNOPSIS
    Clicks on an alert button.
    
    
SYNTAX
    Click-AlertButton [-sessionId <String>] [-button] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Clicks on an alert button.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -button <String>
        The name of the button to click
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Click-AlertButton -button "Ok"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Click-AlertButton -examples".
    For more information, type: "get-help Click-AlertButton -detailed".
    For technical information, type: "get-help Click-AlertButton -full".




