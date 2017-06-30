Connect Android devices
=======================

Quamotion can work with physical Android devices, such as tablets or phones, that
you connect to your PC.

To work with these devices, you need to connect them to your PC using a USB cable,
and the devices need to be configured to work with the Android Debug Bridge.

This article describes how you can connect an Android device to your PC for use
with Quamotion

Configuring USB Debugging the Device
------------------------------------

For Quamotion to be able to communicate with your device, you need to configure USB Debugging
on the device. To configure USB Debugging, follow these steps on the device:

1. On the Home screen, tap the `Apps` button
2. In the `Apps` screen, open the Settings app
3. In the `Settings` screen, in the `System` section, tap `About`
4. Tap `Software Information`
5. Tap the `Build Number` text at least 6 times, until the `You are now a developer` message appears.
6. Tap back until you reach the `Settings` screen and tap `Developer Options`, in the `System` section
7. Tap `USB Debugging` in the `Debugging` section. When asked to confirm, tap `OK`

Connect the device to your PC
-----------------------------

To connect your device to your PC, follow these steps:

1. Connect your device to your PC using a USB cable. 
2. If a window, `Allow USB Debugging`, appears on your device, tap `Always allow from this computer`
   and tap `OK`
3. Verify if the device appears in the devices page of the Quamotion frontend http://localhost:17894/Home/Devices.

Prepare the device for automation
---------------------------------

It is advised enable the stay awake setting. This prevents the screen to be locked during a test run.

1. On the Home screen, tap the `Apps` button
2. In the `Apps` screen, open the Settings app
3. In the `Settings` screen, in the `System` section, tap `Developer Options`
4. Toggle the 'Stay awake' setting (the screen will never sleep while charging)

Lowering the the screen brightness optimises the battery life.

1. On the Home screen, tap the `Apps` button
2. In the `Apps` screen, open the Settings app
3. Tap 'Display' in the 'Settings' screen
4. Tap 'Brightness' in the 'Screen' section
5. Disable the 'Automatic brightness'
6. Move the brightness slider to the minimum

If possible disable the pin code

1. On the Home screen, tap the `Apps` button
2. In the `Apps` screen, open the Settings app
3. Tap on 'Screen lock' (or 'security' -> 'Screen lock' on some devices)
4. Tap on Password and enter the pin code
5. Select 'None' or 'Swipe' if possible.

Installing the USB Driver
-------------------------

If your device does not appear when you run `adb devices`, your computer may be missing a driver
for your device.

If your device manufacturer provides you with a driver for your device, please install the driver
from your device manufacturer.

If not, you can attempt to install a generic Android device driver:

1. Open the Windows *Device Manager*
2. In the Device Manager, locate your Anroid device. Right-click your Android device and select
   *Update Driver Software*
3. Select *Browse my computer for driver software*
4. Select *Let me pick from a list of device drivers on my computer*
5. Select *Show All Devices* and click *Next*
6. Click *Have Disk*
7. Click *Browse* and navigate to to `C:\Program Files (x86)\Quamotion\ext\adk\extras\google\usb_driver`
8. Select *Android ADB Interface* from the list of device types, and click Next
9. Click *Yes* to confirm the installation of the driver.
10. When asked *Would you like to install this device software*, click *Install* to confirm.
11. When the installation completes, click *Close* to close the window.

To confirm the driver for your device has been installed properly, repeat the steps in the
previous section.