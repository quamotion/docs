``iproxy`` - Forwards a local port to a port on the device.
===========================================================

Forwards a local port to a port on the device.

Synopsis
""""""""

.. code-block:: none

    iproxy local_port device_port udid

Options
"""""""

===========  ==================  =======================================================
Short Name	 Long Name			 Value 
===========  ==================  =======================================================
.            local port          The port of the socket to open on the local PC. This port will forward all the traffic to the device.
.            device port         The port of the socket on the device, to which the traffic is to be forwarded. 
.            udid                Optionally, the target device specific device by its 40-digit device UDID.
===========  ==================  ======================================================= 

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_