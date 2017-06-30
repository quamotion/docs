Quamotion Command Line: The ``Runner`` command
==============================================

Summary
-------

The ``runner`` command allows you start iOS or Android applications on your mobile device.

Usage
-----

To use the ``runner`` command, you need to specify the application you want to run and on which device
you want to run it. These settings are stored in the ``Settings.MobileTestSettings`` file in your Mobile Coded UI 
Test Project.

You run the ``runner`` command by typing

.. code-block:: shell

    Quamotion.CommandLine -m run -s [Settings.MobileTestSettings]

where ``[Settings.MobileTestSettings]`` is the path to your Mobile Coded UI Test Project.
 