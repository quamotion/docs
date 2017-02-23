Get-ElementRectangle Commands
=========================

This page contains details on **Get-ElementRectangle** commands.

Get-ElementRectangle
-------------------------


NAME
    Get-ElementRectangle
    
SYNOPSIS
    Gets the bounds of an element.
    
    
SYNTAX
    Get-ElementRectangle [-sessionId <String>] [-elementId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the bounds of an element.
    Returns: a rectangle reprenting the outer bounds of an element.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier of the element to query.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-Element "login" | Get-ElementRectangle
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ElementRectangle -examples".
    For more information, type: "get-help Get-ElementRectangle -detailed".
    For technical information, type: "get-help Get-ElementRectangle -full".




