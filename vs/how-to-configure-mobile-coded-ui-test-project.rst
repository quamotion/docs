Configure a Mobile Coded UI Test Project
========================================

A Mobile Coded UI Test Project contains the tests for your mobile application. It also contains a set of settings, 
Before you can add a test to your Mobile Coded UI Test Project, you need to configure your Mobile Coded UI Test Project
so that Visual Studio knows:

* Which app you want to test
* On which device you want to test your app

Before your get started
-----------------------

You can configure a Mobile Coded UI Test Project after you've created one. For more information on creating a Mobile
Coded UI Test Project, see `How To: Create a Mobile Coded UI Test Project <how-to-create-mobile-coded-ui-test-project>`_.

Specify which app you want to test
----------------------------------

Your first step is to specify which app you want to test. For this step, you need the following information:

* The app you want to test. This is usually an *ipa* file for iOS applications and a *apk* file for Android applications.
    You can usually request these files from your development team. You do not need to make any changes to these files.

Then, follow these steps:

1. Open your Mobile Coded UI Test Project
2. In the Solution Explorer window, locate the *Settings.MobileTestSettings* file. Double click the file to open it
    .. image:: how-to-configure-mobile-coded-ui-test-project-mobiletestsettings.png
3. In the *Application and Devices* tab, click the *Browse* button next to the *Application* text box
    .. image:: how-to-configure-mobile-coded-ui-test-project-mobiletestsettings-application-and-devices.png
4. Use the *Open* dialog window to select your *apk* or *ipa* file and click *Open*
    .. image:: how-to-configure-mobile-coded-ui-test-project-mobiletestsettings-select-app.png
5. Click the *Save* button to save your changes.

Your Mobile Coded UI Test Project has now been configured to test your application.

Specify the code signing certificates
-------------------------------------

If you are testing an iOS application, you must specify the code signing certificates.
For more information on how to specify the code signing certificates, see `How To: Configure iOS Certificates <how-to-configure-ios-certificates>`_.

If you are testing an Android application, you do not need to specify code signing certificates.

Specify on which device you want to run your tests
--------------------------------------------------

You need to specify on which device you want to run your tests by default. You can later configure your tests so that they run
on multiple devices concurrently.

Your default device will be used when using the Coded UI Test Builder, and will be the device your tests run on unless you specify
otherwise.

Quamotion can work with multiple types of devices. For example, Quamotion can work with cloud devices, local devices and emulators. 
Quamotion uses Device Providers to manage these devices.

You need to specify two settings

* The device provider, which specifies the type of device you want to use. By default, Quamotion ships with the following
    device providers:
    - The *Genymotion* device provider works with Android Emulators from Genymotion.
    - The *Android* device provider works with Android devices that you have connected to your PC using a USB cable
    - The *Remote TestKit* device provider works with Remote TestKit public cloud and private cloud devices.
        Our current release supports Android devices, and we expect to add support for iOS devices soon.
    - The *iOS* device provider works with iOS devices that you have connected to your PC using a USB cable.
* The device you want to use

To specify the device on which you want to run your tests:

1. Open your Mobile Coded UI Test Project
2. In the Solution Explorer window, locate the *Settings.MobileTestSettings* file. Double click the file to open it
    .. image:: how-to-configure-mobile-coded-ui-test-project-mobiletestsettings.png
3. In the *Device Provider* dropdown list, select the device provider you want to use.
4. In the *Device* dropdown list, select the device you want to use.
5. Click the *Save* button to save your changes.

Where to go from here?
----------------------

You're all set! You have create a Mobile Coded UI Test Project, and you have specified which app you want to test and on
which device you want to test your app.

You can continue with the `How To: Create Your First Test <how-to-create-first-mobile-coded-ui-test>`_ guide.
