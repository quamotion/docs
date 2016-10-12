``idevicename`` - Display the device name or set it to ``NAME`` if specified.
=============================================================================

Simple utility to manage the device name.

If called without any extra argument this tool will print the current device name.

If ``NAME`` is given the device name will be set to the name specified.

Synopsis
""""""""

.. code-block:: none

    idevicename [OPTIONS] [NAME]

Options
"""""""

===========  ==================  =======================================================
Short Name	 Long Name			 Value 
===========  ==================  =======================================================
-d           --debug             enable communication debugging.
-u           --udid              target specific device by its 40-digit device UDID.
-h           --help              prints usage information
===========  ==================  =======================================================

Authors
"""""""

* Nikias Bassen

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_