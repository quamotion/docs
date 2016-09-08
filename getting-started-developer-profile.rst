Configuring Developer Profiles
==============================

If you want to test iOS applications, you need to configure a developer profile. A developer profile
is a file with the :code:`.developerprofile` extension, which contains:

* An iOS Code Signing Certificate, which is used to sign iOS applications
* An iOS Provisioning Profile, which allows you to install applications which are signed with your
  code signing certificate on a set of devices you've registered with the portal.

You need to use an iOS Code Signing Certificate that is valid, and that allows you to run applications that have
not yet been submitted to the app store on your iOS device.
Your developer profile must allow you to install apps your devices.

Obtaining the iOS Code Signing Certificate using the Quamotion Command Line Utility
-----------------------------------------------------------------------------------

If nobody on your team has an iOS Code Signing Certificate, the easies way for you to
obtain the iOS Code Signing Certificate is to use the Quamotion Command Line Utility.

To complete this step, you need to have an Apple Developer Account with an active subscription.
You can find out more at the `Apple Developer <https://developer.apple.com/>`_ site.

To do so, type the following command:

.. code-block:: bash

   Quamotion.CommandLine CreateDeveloperProfile -f {file} -a {accountName} -b {accountPassword} -p {password}

where :code:`{file}` is the name of the developer profile you want to create, for example, :code:`quamotion.developerprofile`,
:code:`{accountName}` and :code:`{accountPassword}` are the username and password you use to log on to the
`Apple Developer <https://developer.apple.com/>`_ site, and :code:`{password}` is the password you want to
use to protect the developer profile.


Obtaining the iOS Code Signing Certificate using XCode
------------------------------------------------------

If you or a developer on your team already has an iOS Code Signing Certificate, the easiest
way for you to obtain the iOS Code Signing Certificate is by exporting it from XCode.

To do so, follow these steps:

1. On your Mac machine, open Xcode and click *Xcode*, *Preferences...*
2. In the *Preferences* window, choose *Accounts*
3. At the bottom of the *Accounts* window, click the gear icon, and choose *Export Accounts*
4. In the *Save* dialog, choose a file name and enter a password to protect the file.
   You will need this password later.
5. If a warning appears about Xcode exporting the private key, click *Allow*

Installing the iOS Code Signing Certificate in Quamotion
--------------------------------------------------------

1. Copy the file you've created in the previous step to the folder in which you've installed
   the Quamotion WebDriver. This can be on a different machine, and that machine can be a 
   Mac, Linux or Windows machine.
2. Open the :code:`appsettings.json` file
3. Change the value of the :code:`developerProfilePath` property to the path of the developer profile.
4. Change teh value of the `developerProfilePassword` property to the password you've used to protect the file.