Is-Displayed Commands
=========================

This page contains details on **Is-Displayed** commands.

Is-Displayed
-------------------------


NAME
    Is-Displayed
    
SYNOPSIS
    Tests whether the element is visible.
    
    
SYNTAX
    Is-Displayed [-sessionId <String>] [-elementId] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Tests whether the element is visible.
    $true or $false depending of the visibility of the element.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier element.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Is-Displayed -elementId $loginButton
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Is-Displayed -examples".
    For more information, type: "get-help Is-Displayed -detailed".
    For technical information, type: "get-help Is-Displayed -full".




