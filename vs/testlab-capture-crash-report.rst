Capturing Crash Reports
=======================

Sometimes, software doesn't behave as intended. This article describes how you can capture crash reports and other diagnostic
information from a test server running the Quamotion software.

Harvesting log files
--------------------

The first option is to harvest log files from the server running the Quamotion software. To harvest the log files,
follow these steps:

1. Open the Quamotion Command Prompt
2. Run the ``Quamotion.CommandLine -m harvest`` command
3. Report back your Unique Logging ID to your Quamotion support representative.

Capturing IntelliTrace reports
------------------------------

If the log files do not contain sufficient information, you may be asked to create an IntelliTrace report.

To create an IntelliTrace report, follow these steps:

1. Create a directory ``C:\IntelliTraceCollector``
2. Download the `IntelliTrace Standalone Collector <https://www.microsoft.com/en-us/download/details.aspx?id=44909>`_ and save it
	to the ``C:\IntelliTraceCollector`` directory
3. Open a Command Prompt window as an adminstrator
4. Type ``cd C:\IntelliTraceCollector``
5. Type ``%windir%\system32\expand /f:* IntelliTraceCollection.cab .``

Capturing IntelliTrace reports of a Quamotion.CommandLine command
-----------------------------------------------------------------

6. Type ``IntelliTraceSC.exe launch /cp:"collection_plan.ASP.NET.trace.xml" /f:"qm.itrace" "Quamotion.CommandLine" <arguments>``, where
   ``<arguments>`` are the arguments to the command you want to execute.

Capturing IntelliTrace reports of a Mobile Coded UI Test
--------------------------------------------------------

7. Type ``IntelliTraceSC.exe launch /cp:"collection_plan.ASP.NET.trace.xml" /f:"qm.itrace" "mstest.exe /noisolation /testcontainer:<path>"``, where
   ``path`` is the path to the assembly containing the tests you want to execute.

Sending the test results to Quamotion
-------------------------------------

8. Send the ``qm.itrace`` file to your Quamotion support representative.

For more information, see `Using the IntelliTrace stand-alone collector <https://msdn.microsoft.com/en-us/library/vstudio/hh398365(v=vs.140).aspx>`_
