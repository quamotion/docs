Running Xcode UI Tests from Windows and Linux-based PCs
=======================================================

Quamotion provides software which allows you to run Xcode UI Tests from Windows and Linux-based PCs.
Quamotion provides you with `xcuitrunner`, a stand-alone command-line utility.

Prequisites
-----------

Before you can use Quamotion `xcuitrunner`, you need to make sure you meet the following prerequisites:

- You have installed iTunes (on Windows) or usbmuxd (on Linux)
- You have an iOS Developer Profile which allows you to sign iOS applications and run iOS applications
  signed with your developer certificate on your devices.
- You have mounted the Developer Disk Images on your iOS devices

Using the Quamotion `xcuitrunner`
---------------------------------

To use the Quamotion `xcuitrunner`, run the following command:

```
xcuitrunner
 run 
 --udid <udid>
 --developerProfile <path to your developer profile>
 --developerProfilePassword <password for your developer profile>
 --license <path your Quamotion license file>
```

where `udid` is the UDID of the device on which you want to run the tests, `developerProfile` is the path to the 
Developer Profile you want to use to resign your Xcode UI Test bundle, `developerProfilePassword` is the password
for your developer profile and `license` is the path to your Quamotion license file.

By default, the `xcuitrunner` will run the Facebook WebDriverAgent on your iOS device. If you want to run another
Xcode UI Test on your iOS device, you can specify the path to that test bundle using the `testBundle` parameter.

For more information about the Quamotion `xcuitrunner` command-line utility, contact us
at info@quamotion.mobi.