Get-ElementProperty Commands
============================

This page contains details on **Get-ElementProperty** commands.

Get-ElementProperty
-------------------------


NAME
    Get-ElementProperty
    
SYNOPSIS
    Gets the value of an element property.
    
    
SYNTAX
    Get-ElementProperty [-sessionId <String>] [-elementId] <String> [-property] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the value of an element property.
    Returns: the value of the property
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier of the element to query.
        
    -property <String>
        The property name to query.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-ElementProperty 12345 "Text"
    
    Find-Element "login" | Get-ElementProperty "Text"
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-ElementProperty -examples".
    For more information, type: "get-help Get-ElementProperty -detailed".
    For technical information, type: "get-help Get-ElementProperty -full".




