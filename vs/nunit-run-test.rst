How To: Run tests with NUnit 3
==============================

You can test mobile applications using NUnit 3 with Quamotion.

Create a NUnit test that runs on mobile devices
-----------------------------------------------

To create a NUnit test that runs on mobile devices, you need to perform the following steps:

1. Create a new class which contains your tests
2. Add a public method to your class which will host your tests
3. To mark you method as a mobile test, you need to add the ``Test`` and ``StartApp`` attributes. The ``StartApp`` attribute can take
   either a device ID (such as the serial number of your Android device) and the path to the application as a parameter, 
   or the path to a ``.MobileTestSettings`` file.
  
For example, the following test would test the ``demo.apk`` application on an Android device with serial number ``1234``:

.. code-block:: csharp

  [Test, StartApp("1234", "test.apk")]
  public void BookTrainTicket()
  {
  }

Write your mobile test
----------------------

To write your mobile test, you can use the Quamotion test automation API. For example, the following code changes the orientation
of the device, taps a button with marked ``Belgium`` and types the text ``Paris`` in the field with ID ``booking_autocomplete``:

.. code-block:: csharp

  [Test, StartApp("1234", "test.apk")]
  public void BookTrainTicket()
  {
    Device.SetOrientation(ScreenOrientation.Landscape);
    Gesture.Tap(w => w.Marked("Belgique"));
    Keyboard.Type(w => w.Id("booking_autocomplete"), "Paris");
  }

Run your mobile test
--------------------

To run your mobile test, you can either use the NUnit add in for Visual Studio, or run the test from the command line.

To discover tests from the command line, use the following command:

``"C:\Program Files (x86)\NUnit.org\nunit-console\nunit3-console.exe" --explorer <path-to-dll>``

To run a test from the command line, use the following command:

``"C:\Program Files (x86)\NUnit.org\nunit-console\nunit3-console.exe" --x86 --test <name of the test to run> --explorer <path-to-dll>``

Analyze the test results
------------------------

The `nunit3-console.exe` process uses exit codes to indicate the overall status of the test run. The following exit codes are used:

+-----------------------+---------------------------------------------------------------------------------------+
| Return Code           | Description                                                                           |
+=======================+=======================================================================================+
| 0                     | All test passed                                                                       |
+-----------------------+---------------------------------------------------------------------------------------+
| > 0                   | The number of tests that failed                                                       |
+-----------------------+---------------------------------------------------------------------------------------+
| -1                    | Invalid arguments                                                                     |
+-----------------------+---------------------------------------------------------------------------------------+
| -2                    | Invalid assembly (.dll file that contains the tests)                                  |
+-----------------------+---------------------------------------------------------------------------------------+
| -3                    | Test not found                                                                        |
+-----------------------+---------------------------------------------------------------------------------------+
| -100                  | Unexpected error                                                                      |
+-----------------------+---------------------------------------------------------------------------------------+

Additionaly, a ``TestResults.xml`` file is generated that contains information about the tests results. More information can be found
at the [NUnit site](https://github.com/nunit/nunit/wiki/Test-Result-XML-Format).

Finally, a ``<TestName>.<Device ID>.xml`` test result file is generated for each device on which the test was executed.

This file contains a `TestLog` node with more information about the test that was executed, and the device the test
was executed on:

.. code-block:: xml

  <TestLog 
    TestName="Quamotion.Test.NUnit.Example.OpenShow" 
    ApplicationId="com.example.test" 
    ApplicationVersion="3.12.0 build 4529" 
    ApplicationFile="com.example.test-1.apk" 
    ApplicationSize="14294696" 
    Started="2015-10-28T15:19:46.8317964Z" 
    DeviceName="Nexus 10" 
    DeviceModel="Nexus 10" 
    DeviceManufacturer="samsung" 
    DeviceProvider="Android" 
    DeviceSerialNumber="R32D2034CWH" 
    OperatingSystemName="Android" 
    OperatingSystemVersion="5.1.1" 
    DeviceCpuType="ARMv7AndBelow" 
    DeviceScreenResolution="{Width=2560, Height=1600}">


as well as information about the individual actions (such as gestures) that were performed:

.. code-block:: xml

  <TestLogEntry>
    <Type>Gesture.Tap</Type>
    <Header>Performed gesture Tap on </Header>
    <Screenshot>data:image/png;base64,iVBOR...</Screenshot>
    <Widget>[@marked='Sign In']</Widget>
    <Timestamp>2015-10-28T15:20:26.3106440Z</Timestamp>
    <Duration>0:00:04.0127879</Duration>
    <Success>true</Success> 
    <Properties />
  </TestLogEntry>

where:

+-----------------------+---------------------------------------------------------------------------------------+
| Element Name          | Description                                                                           |
+=======================+=======================================================================================+
| Type                  | A unique ID that indentifies the operation that was executed                          |
+-----------------------+---------------------------------------------------------------------------------------+
| Header                | A general description of the operation                                                |
+-----------------------+---------------------------------------------------------------------------------------+
| Screenshot            | A screenshot of the device, in PNG format, as a base 64 encoded string                |
+-----------------------+---------------------------------------------------------------------------------------+
| Widget                | An XPath expression that defines on which element the operation was executed          |
+-----------------------+---------------------------------------------------------------------------------------+
| Timestamp             | The date at which the operation was started                                           |
+-----------------------+---------------------------------------------------------------------------------------+
| Duration              | How long it took to execute the operation                                             |
+-----------------------+---------------------------------------------------------------------------------------+
| Success               | `true` or `false` indicating a success or a failure                                   |
+-----------------------+---------------------------------------------------------------------------------------+
| Properties            | Additional information, if available.                                                 |
+-----------------------+---------------------------------------------------------------------------------------+
