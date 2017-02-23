Find-Elements Commands
=========================

This page contains details on **Find-Elements** commands.

Find-Elements
-------------------------


NAME
    Find-Elements
    
SYNOPSIS
    Search for all elements whose xpath matches the given value.
    
    
SYNTAX
    Find-Elements [-sessionId <String>] [-xpath] <String> [-ignoreVisibility <Boolean>] [-parentElement <String>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    Search for all elements whose xpath attribute matches the given value. 
    Returns: all elements whose xpath attribute matches the given value.
    

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
    
    PS C:\>Find-Elements -xpath "*[@marked='login']"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Find-Elements -examples".
    For more information, type: "get-help Find-Elements -detailed".
    For technical information, type: "get-help Find-Elements -full".




