Set-Window Commands
=========================

This page contains details on **Set-Window** commands.

Set-Window
-------------------------


NAME
    Set-Window
    
SYNOPSIS
    Change focus to another window.
    
    
SYNTAX
    Set-Window [-sessionId <String>] [-windowName] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Change focus to another window.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -windowName <String>
        The window to change focus to.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Set-Window "Native"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Window -examples".
    For more information, type: "get-help Set-Window -detailed".
    For technical information, type: "get-help Set-Window -full".




