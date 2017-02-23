Flick-Coordinate Commands
=========================

This page contains details on **Flick-Coordinate** commands.

Flick-Coordinate
-------------------------


NAME
    Flick-Coordinate
    
SYNOPSIS
    Performs a flick based on coordinates.
    
    
SYNTAX
    Flick-Coordinate [[-sessionId] <String>] [-elementId] <Int32> [-x] <Int32> [-y] <Int32> [-xoffset] <Int32> 
    [-yoffset] <Int32> [-speed] <Int32> [<CommonParameters>]
    
    
DESCRIPTION
    Performs a flick based on coordinates.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <Int32>
        The identifier of the element.
        
    -x <Int32>
        x coordinate of the start point relative from the element
        
    -y <Int32>
        y coordinate of the start point relative from the element
        
    -xoffset <Int32>
        the horizontal distance to flick
        
    -yoffset <Int32>
        
    -speed <Int32>
        the speed of the flick movement
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Flick-Coordinate -elementId 12244 -x 100 -y 100 -xoffset 0 -yoffset -300
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Flick-Coordinate -examples".
    For more information, type: "get-help Flick-Coordinate -detailed".
    For technical information, type: "get-help Flick-Coordinate -full".




