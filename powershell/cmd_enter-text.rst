Enter-Text Commands
=========================

This page contains details on **Enter-Text** commands.

Enter-Text
-------------------------


NAME
    Enter-Text
    
SYNOPSIS
    Send a sequence of key strokes to the active element.
    
    
SYNTAX
    Enter-Text [-sessionId <String>] [-text] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Send a sequence of key strokes to the active element.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -text <String>
        The keys sequence to be sent.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Enter-Text "Quamotion"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Enter-Text -examples".
    For more information, type: "get-help Enter-Text -detailed".
    For technical information, type: "get-help Enter-Text -full".




