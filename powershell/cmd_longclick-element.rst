LongClick-Element Commands
==========================

This page contains details on **LongClick-Element** commands.

LongClick-Element
-------------------------


NAME
    LongClick-Element
    
SYNOPSIS
    Performs a long click on the first element whose locator matches the given value.
    
    
SYNTAX
    LongClick-Element [-sessionId <String>] [-elementId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Performs a long click on the first element whose locator matches the given value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier of the element to click.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-Element -marked "Login" | LongClick-Element
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help LongClick-Element -examples".
    For more information, type: "get-help LongClick-Element -detailed".
    For technical information, type: "get-help LongClick-Element -full".




