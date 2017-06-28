Connect iOS devices
===================

Quamotion can work with physical iOS devices, such as tablets or phones, that
you connect to your PC.

To work with these devices, you need to connect them to your PC using a USB cable.

This article describes how you can connect an iOS device to your PC for use
with Quamotion

Connect the device to your PC
-----------------------------

To connect your device to your PC, follow these steps:

1. Connect your device to your PC using a USB cable. 
2. If a window, `Trust This Computer?`, appears on your device, tap `Trust`
3. Verify if the device appears in the devices page of the Quamotion frontend http://localhost:17894/Home/Devices.

Prepare the device for automation
---------------------------------

For some features (Full Device Automation, popup handling) you need to enable the 'UI Automation' setting on the device. 
This setting is only be visible after the first launch of a session.

1. On the Home screen, open the Settings app
2. Tap on the `Developer` setting. (this option only appears after you have launched a first session)
3. Toggle the 'Enable UI Automation' setting

It is advised disable the `Auto Lock` setting. This prevents the screen to be locked during a test run. 
Additionally you can lower the screen brightness to optimise the battery life.

1. On the Home screen, open the Settings app
2. Tap on the `Display and Brightness` setting. 
3. Disable the 'Auto-Brightness' setting and set the brightness slider to the minimum.
4. Tap on the `Auto Lock` setting
5. Select `Never` and go back to the Home screen.

Disable the pin code

1. On the Home screen, open the Settings app
2. Tap on the `Touch ID and Passcode` setting. 
3. Tap on the `Turn Passcode Off` setting
