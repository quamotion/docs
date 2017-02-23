Navigate-To Commands
=========================

This page contains details on **Navigate-To** commands.

Navigate-To
-------------------------


NAME
    Navigate-To
    
SYNOPSIS
    Navigate to a new URL.
    
    
SYNTAX
    Navigate-To [-sessionId <String>] [-url] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Navigate to a new URL.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -url <String>
        The URL to navigate to.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Navigate-To -url "http:\\quamotion.mobi"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Navigate-To -examples".
    For more information, type: "get-help Navigate-To -detailed".
    For technical information, type: "get-help Navigate-To -full".




