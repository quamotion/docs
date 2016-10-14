# Install the iOS Developer Disk

When Quamotion runs tests on an iOS device, it uses some of the Apple Developer tools to perform
key tasks. Examples of such tasks include installing or launching an application, and capturing
screenshots.

These tools are not installed on iOS devices by default. They can be added to the iOS device
by mounting the developer disk. If you run your app on a device using XCode, XCode mounts the
developer disk for you.

Quamotion can mount the developer disk for you, but you need to install the iOS Developer Disk
on your PC before Quamotion can mount it.

To install the iOS Developer Disk on your PC, you need to download it from a Mac machine and
copy it to your PC. Follow these steps:

## Downloading the iOS Developer Disk from a Mac machine

1. On a Mac machine, make sure the latest version of XCode is installed
2. Navigate to the `/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport` folder
	and create a zip archive that contains the contents of this folder.
3. Copy this zip archive to your Windows PC.

## Installing the iOS Developer Disk on your PC

1. On the PC where you have installed Quamotion, navigate to `C:\Program Files (x86)\Quamotion\automation\ios`
2. Make a new folder called `devimg`.
3. Extract the content of the zip archive you've just created on your Mac machine to this `devimg` folder.
