Get-ElementProperties Commands
==============================

This page contains details on **Get-ElementProperties** commands.

Get-ElementProperties
-------------------------


NAME
    Get-ElementProperties
    
SYNOPSIS
    Gets all property names of an element.
    
    
SYNTAX
    Get-ElementProperties [-sessionId <String>] [-elementId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets all property names of an element.
    Returns: all property names of an element.
    

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
    
    PS C:\>Get-ElementProperties 12345
    
    Find-Element "login" | Get-ElementProperties
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ElementProperties -examples".
    For more information, type: "get-help Get-ElementProperties -detailed".
    For technical information, type: "get-help Get-ElementProperties -full".




