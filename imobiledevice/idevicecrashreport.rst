``idevicecrashreport`` - Retrieve crash reports from a device.
==============================================================

Simple utility to move crash reports from a device to a local directory.

Synopsis
""""""""

.. code-block:: none

    idevicecrashreport [OPTIONS] DIRECTORY

The utility outputs lines prefixed with either ``Link:``, ``Copy:`` or ``Move:``
depending on whether a symlink was created, a file was copied or moved from
the device to the target ``DIRECTORY``.

Options
"""""""

===========  ==================  =============================================================
Short Name	 Long Name			 Value 
===========  ==================  =============================================================
-e           --extract           extract raw crash report into separate ``.crash`` files.
-k           --keep              copy but do not remove crash reports from device.
-d           --debug             enable communication debugging.
-u           --udid              ``UDID```target specific device by its 40-digit device UDID.
-h           --help              prints usage information.
===========  ==================  =============================================================

Authors
"""""""

* Martin Szulecki
* Nikias Bassen

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_