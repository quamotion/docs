Mount the Apple Developer Disk
==============================

For certain operations, such as launching an app, to work, you must first mount the Developer Disk Image.

Prerequisites
""""""""""""""

Before you can install an application on your iOS device, make sure the following requirements are met: 

* You have the Developer Disk Image for the version of iOS that is running on your device. 

For more information on obtaining the Developer Disk Image, see :doc:`download`.

Mounting the Developer Disk Image
""""""""""""""""""""""""""""""""""

To mount the Developer Disk Image, run the following command: 

.. code-block:: none

    ideviceimagemounter.exe -t Developer DeveloperDiskImage.dmg DeveloperDiskImage.dmg.signature
