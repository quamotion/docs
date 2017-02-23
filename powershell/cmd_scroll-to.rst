Scroll-To Commands
=========================

This page contains details on **Scroll-To** commands.

Scroll-To
-------------------------


NAME
    Scroll-To
    
SYNOPSIS
    Scrolls until an element with a matching locator value is visible
    
    
SYNTAX
    Scroll-To [[-sessionId] <String>] [[-elementId] <String>] [[-marked] <String>] [[-xpath] <String>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    Scrolls until an element with a matching locator value is visible.
    Note that the element should already be loaded. 
    Please use the ScollDown-To or ScrollUp-To commands if the application generates the list dynamically.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier of the scroll view.
        
    -marked <String>
        (marked locator) The value for the marked locator
        
    -xpath <String>
        (xpath locator) The value for the xpath locator
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Scroll-To -elementId $scrollView -marked "John"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Scroll-To -examples".
    For more information, type: "get-help Scroll-To -detailed".
    For technical information, type: "get-help Scroll-To -full".




