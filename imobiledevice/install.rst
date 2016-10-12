Install Quamotion iMobileDevice for Windows
===========================================

Requirements
------------

Quamotion iMobileDevice for Windows supports a wide range of devices and versions of Windows.

iOS Devices
"""""""""""

Quamotion iMobileDevice for Windows has been tested with the following iOS devices, with firmware up to 8.1.2: 

================ ============================================
Device		     Supported Versions						 
================ ============================================
iPod Touch	     1G, 2G, 3G, 4G and 5G						
iPhone		     1G, 2G, 3G, 3GS, 4, 4S, 5, 5C, 5S, 6, 6+	
iPad			 1, 2, 3, 4, Mini, Mini 3, Air, Air 2		
Apple TV		 2G, 3G									
================ ============================================

Windows
"""""""
Quamotion iMobileDevice for Windows supports Windows 7 and above. Both 32-bit and 64-bit versions of Windows are supported. 

Apple Application Support
""""""""""""""""""""""""""

Quamotion iMobileDevice for Windows relies on the Apple USB drivers. You need to install AppleApplicationSupport.msi. 
This file is available in iTunes installations; your best bet is to install iTunes on your PC. iTunes is available from Apple. 

Here's what we recommend you do:

1. Go to the `iTunes Download Page <http://www.apple.com/itunes/download/>`_
2. Download and install iTunes on your computer

Developer Disk Image
"""""""""""""""""""""

.. note::

    Most of the Quamotion iMobileDevice for Windows do not require the Developer Disk Image. You only need the Developer Disk Image if you want to start an application on the device. 

You may need the Developer Disk Image for your iOS device. To obtain the Developer Disk Image, follow these instructions: 

1. Download XCode, for example from https://developer.apple.com/xcode/downloads/, and install it on a Mac. 
2. The developer disk image is located by default in the Xcode installation folder under ``XCode/Contents/Developer/Platforms/IPhoneOS.platform/DeviceSupport/<iOS_version_number>/``, where ``iOS_version_number`` is the iOS version of the device that you want to test. 
   
   You need to copy two files for the developer disk image, DeveloperDiskImage.dmg and DeveloperDiskImage.dmg.signature. 

You may also want to check the `Issues section of the libimobiledevice project <https://github.com/libimobiledevice/libimobiledevice/issues/>`_. 

Installing using the Installer
""""""""""""""""""""""""""""""

We recommend you use our Installer. Follow these steps:

1. Go to the :doc:`download` page, and download the Quamotion iMobileDevice for Windows Installer
2. Start the Installer by double-clicking it.
3. Windows may warn you that it prevented an unrecognized app from starting. If so, click More Info and Run Anyway
4. The installation wizard will guide you through the process. You can complete it by clicking Next.

Once you've installed Quamotion iMobileDevice for Windows, you can find the tools in the following folder:

``C:\Program Files (x86)\Quamotion\iMobileDevice``

or, if you're running a 32-bit version of Windows:

``C:\Program Files\Quamotion\iMobileDevice``