Set-Timeout Commands
=========================

This page contains details on **Set-Timeout** commands.

Set-Timeout
-------------------------


NAME
    Set-Timeout
    
SYNOPSIS
    Set the amount of time, in milliseconds, are permitted to run before they are aborted and a timeout error is 
    returned to the client.
    
    
SYNTAX
    Set-Timeout [-sessionId <String>] [-time] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Set the amount of time, in milliseconds, are permitted to run before they are aborted and a timeout error is 
    returned to the client.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -time <String>
        The amount of time to wait, in milliseconds. This value has a lower bound of 0.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Set-Timeout -time 3000
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Set-Timeout -examples".
    For more information, type: "get-help Set-Timeout -detailed".
    For technical information, type: "get-help Set-Timeout -full".




