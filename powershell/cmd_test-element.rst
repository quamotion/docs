Test-Element Commands
=========================

This page contains details on **Test-Element** commands.

Test-Element
-------------------------


NAME
    Test-Element
    
SYNOPSIS
    Tests whether an element exist matching the given xpath
    
    
SYNTAX
    Test-Element [-sessionId <String>] [-xpath] <String> [-ignoreVisibility <Boolean>] [<CommonParameters>]
    
    
DESCRIPTION
    Tests whether an element exist matching the given xpath
    Returns: $true or $false depending on the existens of the element.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -xpath <String>
        The xpath for which to test the element.
        
    -ignoreVisibility <Boolean>
        (Optional) indicates whether non visible elements should be taken into account.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Test-Element -xpath \"\*[@marked=\'login\']\"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Test-Element -examples".
    For more information, type: "get-help Test-Element -detailed".
    For technical information, type: "get-help Test-Element -full".




