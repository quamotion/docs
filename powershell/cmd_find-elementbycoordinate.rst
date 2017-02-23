Find-ElementByCoordinate Commands
=========================

This page contains details on **Find-ElementByCoordinate** commands.

Find-ElementByCoordinate
-------------------------


NAME
    Find-ElementByCoordinate
    
SYNOPSIS
    Search for the top element in the current window on position (x, y).
    
    
SYNTAX
    Find-ElementByCoordinate [-sessionId <String>] [-x] <Int32> [-y] <Int32> [<CommonParameters>]
    
    
DESCRIPTION
    Search for the top element in the current window on position (x, y). 
    The coordinates are expressed in pixels and measured from the top left corner.
    Returns: the element on position (x, y)
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -x <Int32>
        The x coordinate
        
    -y <Int32>
        the y coordinate
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Find-ElementByCoordinate -x 200 -y 500
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Find-ElementByCoordinate -examples".
    For more information, type: "get-help Find-ElementByCoordinate -detailed".
    For technical information, type: "get-help Find-ElementByCoordinate -full".




