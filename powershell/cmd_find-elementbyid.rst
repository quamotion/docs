Find-ElementById Commands
=========================

This page contains details on **Find-ElementById** commands.

Find-ElementById
-------------------------


NAME
    Find-ElementById
    
SYNOPSIS
    Search for a element whose identifier matches the given value.
    
    
SYNTAX
    Find-ElementById [-sessionId <String>] [-id] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Search for element whose identifier attribute matches the given value. 
    Returns: the first element whose identifier attribute matches the given value.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -id <String>
        The indentifier of the element to search.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-ElementById -id 123456
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Find-ElementById -examples".
    For more information, type: "get-help Find-ElementById -detailed".
    For technical information, type: "get-help Find-ElementById -full".




