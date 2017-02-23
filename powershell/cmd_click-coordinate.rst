Click-Coordinate Commands
=========================

This page contains details on **Click-Coordinate** commands.

Click-Coordinate
-------------------------


NAME
    Click-Coordinate
    
SYNOPSIS
    Performs a click on a coordinate.
    
    
SYNTAX
    Click-Coordinate [-sessionId <String>] [-x] <Int32> [-y] <Int32> [<CommonParameters>]
    
    
DESCRIPTION
    Performs a click on a coordinate. The coordinate is measured from the top left corner of the screen.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -x <Int32>
        x coordinate of the start point relative from the element
        
    -y <Int32>
        y coordinate of the start point relative from the element
        
        s.EXAMPLE
        Click-Coordinate -x 100 -y 100
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
REMARKS
    To see the examples, type: "get-help Click-Coordinate -examples".
    For more information, type: "get-help Click-Coordinate -detailed".
    For technical information, type: "get-help Click-Coordinate -full".




