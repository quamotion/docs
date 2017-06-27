Quamotion Command Line: The ``ResetEnvironment`` command
========================================================

Summary
-------

You can use the reset environment command to reset your Quamotion settings to their default values,
either on your PC or on a device.

Usage
-----

To reset your Quamotion settings on your local PC, type:

.. code-block:: shell

    Quamotion.CommandLine -m ResetEnvironment -Computer

To reset your Quamotion settings on a device, type:

.. code-block:: shell

    Quamotion.CommandLine -m ResetEnvironment --Device --MobileTestSettings [Settings.MobileTestSettings]

where ``[Settings.MobileTestSettings]`` is the path to your Mobile Coded UI Test Project.
