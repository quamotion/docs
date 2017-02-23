Find-ElementFlex Commands
=========================

This page contains details on **Find-ElementFlex** commands.

Find-ElementFlex
-------------------------


NAME
    Find-ElementFlex
    
SYNOPSIS
    Searches for an element matching a given locator value.
    
    
SYNTAX
    Find-ElementFlex [-sessionId <String>] -class <String> [<CommonParameters>]
    
    Find-ElementFlex [-sessionId <String>] -xpath <String> [<CommonParameters>]
    
    Find-ElementFlex [-sessionId <String>] -marked <String> [<CommonParameters>]
    
    
DESCRIPTION
    Searches for an element matching the locator value.
    Returns: the first element matching the locator value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -xpath <String>
        (xpath locator) The value for the xpath locator
        
    -class <String>
        (class locator) The value for the class locator
        
    -marked <String>
        (Marked locator) The value for the marked locator
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-ElementFlex -marked "Login"
    
    Find-ElementFlex -xpath "*[@marked='Login']"
    Find-ElementFlex -class "UIView"
    
    
    
    
REMARKS
    To see the examples, type: "get-help Find-ElementFlex -examples".
    For more information, type: "get-help Find-ElementFlex -detailed".
    For technical information, type: "get-help Find-ElementFlex -full".




