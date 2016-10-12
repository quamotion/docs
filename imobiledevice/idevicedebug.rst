``idevicedebug`` - Interact with the debugserver service of a device
====================================================================

Interact with the debug service of a device. Currently the only implemented
command is "run" and allows execution of developer apps and watch the
stdout/stderr of the process.

Synopsis
""""""""

.. code-block:: none

    idevicedebug [OPTIONS] COMMAND

Options
"""""""

===========  ==================  =======================================================
Short Name	 Long Name			 Value 
===========  ==================  =======================================================
-e           --env               ``NAME=VALUE`` set environment variable ``NAME`` to ``VALUE``.
-u           --udid              ``UDID`` target specific device by its 40-digit device UDID.
-d           --debug             enable communication debugging.
-h           --help              prints usage information.
===========  ==================  =======================================================

Commands
""""""""

.. code-block:: none

    idevicedebug run BUNDLEID [ARGS...]

run app with ``BUNDLEID`` and optional ``ARGS`` on device.

Authors
"""""""

* Martin Szulecki

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_