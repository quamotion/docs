Quamotion Command Line: The ``Record`` command
==============================================

Summary
-------

The ``record`` command will launch an application and output all user actions
to the console.

You can use the ``record`` command to test the Quamotion recording functionality.

Usage
-----

To use the ``record`` command, you need to specify the application you want to run and on which device
you want to run it. These settings are stored in the ``Settings.MobileTestSettings`` file in your Mobile Coded UI 
Test Project.

You can start the `record` command by typing:

.. code-block:: shell

    Quamotion.CommandLine.exe -m Record -s [Settings.MobileTestSettings]

where ``[Settings.MobileTestSettings]`` is the path to your Mobile Coded UI Test Project.