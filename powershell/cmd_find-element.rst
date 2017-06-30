Find-Element Commands
=========================

This page contains details on **Find-Element** commands.

Find-Element
-------------------------


NAME
    Find-Element
    
SYNOPSIS
    Search for an element whose xpath matches the given value.
    
    
SYNTAX
    Find-Element [-sessionId <String>] [-xpath] <String> [-ignoreVisibility <Boolean>] [-parentElement <String>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    Search for an element whose xpath attribute matches the given value. 
    Returns: the first element whose xpath attribute matches the given value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -xpath <String>
        The xpath used to locate elements.
        
    -ignoreVisibility <Boolean>
        (Optional) indicates whether non visible elements should be taken into account.
        
    -parentElement <String>
        (Optional) limits the search to only descendants of this element.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-Element -xpath \"\*[@marked=\'login\']\"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Find-Element -examples".
    For more information, type: "get-help Find-Element -detailed".
    For technical information, type: "get-help Find-Element -full".




