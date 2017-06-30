Quamotion Command Line: The ``WidgetDump`` command
==================================================

Summary
-------

The ``WidgetDump`` command allows you to dump all the widgets (UI controls) that are currently being displayed 
on the mobile device, together with all their properties, to an XML file.

You can use this file to analyze the structure of your application. It can also be helpful for the Quamotion
team when it needs to troubleshoot an issue on your device.

Usage
-----

To use the ``WidgetDump`` command, you need to specify the application you want to run and on which device
you want to run it. These settings are stored in the ``Settings.MobileTestSettings`` file in your Mobile Coded UI 
Test Project.

1. Start the ``WidgetDump`` command by typing:
	``Quamotion.CommandLine.exe -m WidgetDump -s [Settings.MobileTestSettings]``
	where `[Settings.MobileTestSettings]` is the path to your Mobile Coded UI Test Project.
2. The application will now launch on your device. Navigate to the screen that contains the widgets you want
	to dump.
3. Hit ENTER
4. Wait while the widgets are being dumped. 

When the command has completed, your current directory will contain:

* A ``widgets.xml`` file that contains the dump of the widegts
* A ``screenshot.png`` file that contains a screenshot of your device at the time the dump was started
* A ``device.xml`` file that contains information about your device.
