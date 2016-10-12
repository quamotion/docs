Install an app
==============

This document describes how you can use Quamotion iMobileDevice for Windows to install an app on an iOS device, using your Windows PC. 

Prerequisites
"""""""""""""

Before you can install an application on your iOS device, make sure the following requirements are met: 

* You have a .ipa file that contains the application binary. 
* The application is signed with valid code signing certificate, and the iOS device on which you want to install is includeded in the embedded provisioning profile included in the .ipa file. 

Install an app on your iOS device
"""""""""""""""""""""""""""""""""

To install an app on your iOS device, run the following command:

.. code-block:: none

  ideviceinstaller.exe -i path_to_ipa

where ``path_to_ipa`` is the full path to the ipa file you want to install on the device.