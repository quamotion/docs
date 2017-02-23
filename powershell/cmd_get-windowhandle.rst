Get-WindowHandle Commands
=========================

This page contains details on **Get-WindowHandle** commands.

Get-WindowHandle
-------------------------


NAME
    Get-WindowHandle
    
SYNOPSIS
    Retrieve the current window handle.
    
    
SYNTAX
    Get-WindowHandle [[-sessionId] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Retrieve the current window handle.
    Returns: The current window handle.
    NoSuchWindow - If the currently selected window has been closed.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-WindowHandle
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-WindowHandle -examples".
    For more information, type: "get-help Get-WindowHandle -detailed".
    For technical information, type: "get-help Get-WindowHandle -full".




