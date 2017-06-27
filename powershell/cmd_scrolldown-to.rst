ScrollDown-To Commands
=========================

This page contains details on **ScrollDown-To** commands.

ScrollDown-To
-------------------------


NAME
    ScrollDown-To
    
SYNOPSIS
    Scrolls down until an element with a matching xpath is visible
    
    
SYNTAX
    ScrollDown-To [[-sessionId] <String>] [[-elementId] <String>] [[-xpath] <String>] [[-scrollTimeout] <Int32>] 
    [<CommonParameters>]
    
    
DESCRIPTION
    Scrolls down until an element with a matching xpath is visible
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -elementId <String>
        The identifier of the scroll view.
        
    -xpath <String>
        (marked locator) The value for the marked locator
        
    -scrollTimeout <Int32>
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>ScrollDown-To -elementId $scrollView -xpath \"\*[@marked=\'John\']\"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help ScrollDown-To -examples".
    For more information, type: "get-help ScrollDown-To -detailed".
    For technical information, type: "get-help ScrollDown-To -full".




