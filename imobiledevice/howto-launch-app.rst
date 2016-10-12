Launch an app 
=============

This document describes how you can use Quamotion iMobileDevice for Windows to start an app on an iOS device, using your Windows PC. 

Prerequisites
"""""""""""""

Before you can install an application on your iOS device, make sure the following requirements are met: 

* The app is installed on your iOS device. For more information about installing an app on your iOS device, see Install an app
* The Developer Disk Image is mounted on your iOS device. For more information, see Mount the Apple Developer Disk

Starting an app on your iOS device
""""""""""""""""""""""""""""""""""

Start your app by running the following command: 

.. code-block:: none

    idevicedebug.exe run <bundleid>

where ``bundleid`` is the bundle id of your app.

The ``idevicedebug`` application will continue to run on your PC as long as the app is running on your device. The console output of 
your app will also be redirected to your PC.
