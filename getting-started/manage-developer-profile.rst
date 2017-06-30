How To: Manage iOS Developer Profiles on Windows
================================================

About Developer Profiles
------------------------

When you test an iOS application using `Quamotion <http://quamotion.mobi>`, you slightly change the application
by adding the test server to the application package. When an application has been changed, it needs to 
be resigned before you can run the application on a device.

In order for you to be able to sign an iOS application, you need to enroll into the 
`Apple Developer Program <https://developer.apple.com/programs/enroll/>`.

Once you are an active member of the Apple Developer Program, you can create *developer profiles*. A developer profile
contains a *certificate*, which identifies you as the person who signed the application, as well as a *provisioning
profile*, which lists all the devices that you can test your application on. Apple limits the number of devices you
can test on to 100.

Creating a developer profile
----------------------------

To create a developer profile, follow these steps:

1. Launch the *Quamotion Command Prompt* application
2. To create a new developer profile, run the `Quamotion.CommandLine -m CreateDeveloperProfile` command as such:

``Quamotion.Commandline -m CreateDeveloperProfile -f test.developerprofile --accountName me@example.com --accountPassword password -p password -d udid``

Where:

+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| Parameter             | Value                                                                                                                                                 |
+=======================+=======================================================================================================================================================+
| ``-f``                | Path to the `.developerprofile` file to create                                                                                                        |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``--accountName``     | The name of your Apple Developer account. This is usually an e-mail address. You use this e-mail address to log on to http://developer.apple.com      |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``--accountPassword`` | The password for your Apple Developer account. You use this password to log on to http://developer.apple.com                                          |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``-p``                | The password for your `.developerprofile` file. You can choose any password. You need this password to open your `.developerprofile` file later       |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``-d``                | The UDID (unique ID) of the device on which you want to run tests. You can add a device later.                                                        |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

## Updating a developer profile

Once you've created a developer profile, you can update it and add additional devices to your developer profile. By adding devices,
you can test your application on these devices.

To add a device to your developer profile, follow these steps:

1. Click *Start*, and select the *Quamotion Command Prompt* application
2. To create a new developer profile, run the `Quamotion.CommandLine -m CreateDeveloperProfile` command as such:

``quamotion.commandline -m UpdateDeveloperProfile -f test.developerprofile --accountName me@example.com --accountPassword password -p password -d udid``

Where:

+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| Parameter             | Value                                                                                                                                                 |
+=======================+=======================================================================================================================================================+
| ``-f``                | Path to the `.developerprofile` file to create                                                                                                        |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``--accountName``     | The name of your Apple Developer account. This is usually an e-mail address. You use this e-mail address to log on to http://developer.apple.com      |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``--accountPassword`` | The password for your Apple Developer account. You use this password to log on to http://developer.apple.com                                          |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``-p``                | The password for your `.developerprofile` file. You can choose any password. You need this password to open your `.developerprofile` file later       |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| ``-d``                | The UDID (unique ID) of the device on which you want to run tests. You can add a device later.                                                        |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
