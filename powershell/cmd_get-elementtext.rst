Get-ElementText Commands
=========================

This page contains details on **Get-ElementText** commands.

Get-ElementText
-------------------------


NAME
    Get-ElementText
    
SYNOPSIS
    Gets the text value of an element.
    
    
SYNTAX
    Get-ElementText [-sessionId <String>] [-elementId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the text value of an element.
    Returns: the text value of an element.
    

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
    
    PS C:\>Find-Element "login" | Get-ElementText
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ElementText -examples".
    For more information, type: "get-help Get-ElementText -detailed".
    For technical information, type: "get-help Get-ElementText -full".




