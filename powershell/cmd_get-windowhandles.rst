Get-WindowHandles Commands
==========================

This page contains details on **Get-WindowHandles** commands.

Get-WindowHandles
-------------------------


NAME
    Get-WindowHandles
    
SYNOPSIS
    Retrieve the list of all window handles available to the session.
    
    
SYNTAX
    Get-WindowHandles [[-sessionId] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Retrieve the list of all window handles available to the session.
    Returns: A list of window handles.
    The order in which the window handles are returned is arbitrary.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-WindowHandles
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-WindowHandles -examples".
    For more information, type: "get-help Get-WindowHandles -detailed".
    For technical information, type: "get-help Get-WindowHandles -full".




