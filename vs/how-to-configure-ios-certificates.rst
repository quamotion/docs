How To: Configure iOS Code Signing Certificates
===============================================

Before you get started
----------------------

You need to use an iOS Code Signing Certificate that is valid, and that allows you to run applications that have
not yet been submitted to the app store on your iOS device.

Obtaining the iOS Code Signing Certificate using Xcode
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
6. Copy the file you have just created to your Windows PC.

Importing the iOS Code Signing Certificate
------------------------------------------

1. Open your Mobile Coded UI Test Project
2. In the Solution Explorer window, locate the *Settings.MobileTestSettings* file. Double click the file to open it
    .. image:: how-to-configure-mobile-coded-ui-test-project-mobiletestsettings.png
3. Click the *iOS Settings* tab.
4. In the *iOS Settings* tab, select *Use Specific iOS Settings*.
5. In the *Load iOS Settings From* dropdown list, select *XCode*
6. Click the *Browse* button next to the *Path* text box, and select the file you have exported from your Mac machine.
7. In the *Password* text box, type the password you have entered on your Mac machine.
8. Click the Save button. 
