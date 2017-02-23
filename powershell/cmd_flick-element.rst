Flick-Element Commands
=========================

This page contains details on **Flick-Element** commands.

Flick-Element
-------------------------


NAME
    Flick-Element
    
SYNOPSIS
    Performs a flick on an element.
    
    
SYNTAX
    Flick-Element [-sessionId <String>] -xpath <String> -xOffset <Int32> -yOffset <Int32> -speed <Int32> 
    [<CommonParameters>]
    
    Flick-Element [-sessionId <String>] -marked <String> -xOffset <Int32> -yOffset <Int32> -speed <Int32> 
    [<CommonParameters>]
    
    Flick-Element [-sessionId <String>] -elementId <String> -xOffset <Int32> -yOffset <Int32> -speed <Int32> 
    [<CommonParameters>]
    
    
DESCRIPTION
    Performs a flick on an element identified by one of the available locators.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        (id locator) The identifier of the element.
        
    -xpath <String>
        (xpath locator) The xpath of the element
        
    -marked <String>
        (marked locator) The marked expression of the element
        
    -xOffset <Int32>
        the horizontal distance to flick
        
    -yOffset <Int32>
        the vertical distance to flick
        
    -speed <Int32>
        the speed of the flick movement
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Flick-Element -marked "login" -xoffset 0 -yoffset -300
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Flick-Element -examples".
    For more information, type: "get-help Flick-Element -detailed".
    For technical information, type: "get-help Flick-Element -full".




