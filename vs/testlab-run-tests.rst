Run tests in a Test Lab
=======================

Requirements
------------

Before you can run tests on a test server, you must first `prepare a test server <testlab-installation>`_.

Prepare your test files

Tests that run on a test server consist of the following files:

- The *installation package* of the application under test. This is a ``.ipa`` or ``.apk`` file.
- The *compiled test scripts*. You create them as Mobile Coded UI Tests in Visual Studio. These files have the ``.dll`` extension.
- A *ordered test*. In an ordered test, you specify which test scripts you want to run, and in what order. These files have the ``.orderedtest`` extension.
- A *Mobile Test Settings* file. In this file, you specify which application you want to test, and on which device(s).
- A *Multi Device Test* file. In this file, you link the mobile test settings file to your ordered test.

Installation package, Compiled Test Script, and Mobile Test Settings
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you create and compile a Mobile Coded UI Test Project, the installation package, compiled test script
and mobile test settings available in the output folder of your project. This is usually the ``bin\debug`` or ``bin\release``
folder.

Ordered Tests
~~~~~~~~~~~~~~

Image you want to test an app of an airline company. You may want to test a scenario in which you navigate to the
home screen, log in, search for a specific flight and log out.

You may have created each of these actions - navigate, log in, search and log out - as an individual Mobile Coded UI Test.
The ordered test references these actions and specifies in which order you want to execute them.

Multi Device Test
~~~~~~~~~~~~~~~~~~

A Multi Device Test file links your Ordered Test and Mobile Test Settings. It is an XML file with the following structure:

.. code-block:: XML

  <MultiDeviceTest>
    <MobileTestSettings>Settings.MobileTestSettings</MobileTestSettings>
    <OrderedTest>AirlineScenario.orderedtest</OrderedTest>
  </MultiDeviceTest>

Run your tests
--------------

To run your tests, run the following command:

.. code-block:: shell

  "%ProgramFiles%\Microsoft Visual Studio 14.0\Common7\IDE\CommonExtensions\Microsoft\TestWindow\vstest.console.exe" /testadapterpath:%ProgramFiles%\Quamotion\bin AirlineScenario.multidevicetest

Analyze the test results
------------------------

By default, your tests results will be saved in a ``.trx`` file. 
This file contains the test results for each test. 
When enabled in the mobile test settings file, the test results include a detailed list of actions that have been executed on the mobile
device, together with a screenshot of the application on the device before the action was executed.

You can use other loggers, or use your own logger, by specifying the ``/logger:`` argument.
