How To: Test Web Applications
=============================

You can test Web Applications on mobile devices using Coded UI for Mobile.

To test Web Applications, you must follow these steps:

1. Create a Mobile Coded UI Test Project
2. Create your tests using a browser on the Windows desktop
3. Replay the test on mobile devices.

Create a Mobile Coded UI Test Project
-------------------------------------

To create a Mobile Coded UI Test Project, follow these steps:

1. Follow the steps in `How To: Create a Mobile Coded UI Test Project <how-to-create-mobile-coded-ui-test-project>`_.
2. Open the ``Settings.MobileTestSettings`` file by double clicking it
3. Under *Application and Devices*, set *Application Type* to *Web (browser-based) application that can be accessed directly from a browser*.

Create a Coded UI Web Test
--------------------------

To create your tests, follow the steps in `How to: Create a Web Client UI Test Using Coded UI Test <https://msdn.microsoft.com/en-us/library/hh404082.aspx>`_.

Run your Coded UI Web Test on Mobile Devices
--------------------------------------------

By default, your test will execute on a Windows browser. To execute your tests on an Android device, you need to add the following line of code to the top of your script:

``BrowserWindow.CurrentBrowser = "Android";``