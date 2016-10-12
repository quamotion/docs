``ideviceimagemounter`` - Mount disk images on the device.
=======================================================

Mounts the specified disk image on the device.

Synopsis
""""""""

..  code-block:: none


    ideviceimagemounter [OPTIONS] IMAGE_FILE IMAGE_SIGNATURE_FILE

Options
"""""""

===========  ========================= =======================================================
Short Name	 Long Name	               Value 
===========  ========================= =======================================================
-d           --debug                   enable communication debugging.
-u           --udid                    UDID target specific device by its 40-digit device UDID.
-l           --list                    list mount information
-t           --image-type              NAME the image type to use, default is 'Developer'
-x           --xml                     use XML output
-h           --help                    prints usage information
.             ``IMAGE_FILE``           the image filename to mount
.             ``IMAGE_SIGNATURE_FILE`` corresponding signature file for image filename
===========  ========================= =======================================================

Authors
"""""""

* Nikias Bassen
* Man page written to conform with Debian by Julien Lavergne.

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_