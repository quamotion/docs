Click-Element Commands
=========================

This page contains details on **Click-Element** commands.

Click-Element
-------------------------


NAME
    Click-Element
    
SYNOPSIS
    Clicks on the first element whose locator matches the given value.
    
    
SYNTAX
    Click-Element [-sessionId <String>] -xpath <String> [<CommonParameters>]
    
    Click-Element [-sessionId <String>] -marked <String> [<CommonParameters>]
    
    Click-Element [-sessionId <String>] -elementId <String> [<CommonParameters>]
    
    
DESCRIPTION
    Clicks on the first element whose locator matches the given value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        
    -xpath <String>
        The xpath used to locate elements.
        
    -marked <String>
        The marked attribute value used to locate elements.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Click-Element -xpath "*[@marked='login']"
    
    Click-Element -marked "login"
    Click-Element -class "UIView"
    
    
    
    
REMARKS
    To see the examples, type: "get-help Click-Element -examples".
    For more information, type: "get-help Click-Element -detailed".
    For technical information, type: "get-help Click-Element -full".




