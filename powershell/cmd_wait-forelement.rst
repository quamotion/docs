Wait-ForElement Commands
=========================

This page contains details on **Wait-ForElement** commands.

Wait-ForElement
-------------------------


NAME
    Wait-ForElement
    
SYNOPSIS
    Waits for an element whose locater matches the given value.
    
    
SYNTAX
    Wait-ForElement [-sessionId <String>] -marked <String> [<CommonParameters>]
    
    Wait-ForElement [-sessionId <String>] -xpath <String> [<CommonParameters>]
    
    Wait-ForElement [-sessionId <String>] -class <String> [<CommonParameters>]
    
    
DESCRIPTION
    Waits for an element whose locator matches the given value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -xpath <String>
        The xpath used to locate elements.
        
    -class <String>
        The class attribute value used to locate elements.
        
    -marked <String>
        The marked attribute value used to locate elements.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Wait-ForElement -xpath \"\*[@marked=\'login\']\"
    
    Wait-ForElement -marked "login"
    Wait-ForElement -class "UIView"
    
    
    
    
REMARKS
    To see the examples, type: "get-help Wait-ForElement -examples".
    For more information, type: "get-help Wait-ForElement -detailed".
    For technical information, type: "get-help Wait-ForElement -full".




