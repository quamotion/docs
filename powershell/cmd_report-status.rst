Report-Status Commands
=========================

This page contains details on **Report-Status** commands.

Report-Status
-------------------------


NAME
    Report-Status
    
SYNOPSIS
    Report a status message.
    
    
SYNTAX
    Report-Status [[-sessionId] <String>] [-success] <Boolean> [-message] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Report a status message. 
    The message will appear in the test-log.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -success <Boolean>
        Indicates whether the status is success or failure
        
    -message <String>
        The message.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>report_status -success $false "Something went wrong"
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Report-Status -examples".
    For more information, type: "get-help Report-Status -detailed".
    For technical information, type: "get-help Report-Status -full".




