Get-Screenshot Commands
=========================

This page contains details on **Get-Screenshot** commands.

Get-Screenshot
-------------------------


NAME
    Get-Screenshot
    
SYNOPSIS
    Takes a screenshot of the device used in the given session.
    
    
SYNTAX
    Get-Screenshot [[-sessionId] <String>] [[-filePath] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Takes a screenshot of the device used in the given session.
    

PARAMETERS
    -sessionId <String>
        (Optional) The identifier of the session to route the command to.
        
    -filePath <String>
        The file path used to store the screenshot.
        
    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see 
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216). 
    
    -------------------------- EXAMPLE 1 --------------------------
    
    PS C:\>Get-Screenshot -filePath c:\temp\screenhot.jpg
    
    
    
    
    
    
REMARKS
    To see the examples, type: "get-help Get-Screenshot -examples".
    For more information, type: "get-help Get-Screenshot -detailed".
    For technical information, type: "get-help Get-Screenshot -full".




