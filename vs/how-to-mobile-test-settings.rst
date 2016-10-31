.. _vs-how-to-mobile-test-settings:

How To: Change the Mobile Test Settings
=======================================

The `Settings.MobileTestSettings` allows you to specify how the tests run. 
The Mobile Test Settings file is an XML file and you can edit either using the Mobile Test Settings Editor in Visual Studio,
or any text or XML editor.

A sample `Settings.MobileTestSettings` file is included below.

.. code-block:: xml

	<?xml version="1.0" encoding="utf-8"?>
	<settings>
	<htmlLoggingEnabled>true</htmlLoggingEnabled>
	<replaySettings restartApplication="true" reinstallApplication="false" clearApplicationSettings="true" />
	<spySettings restartApplication="false" reinstallApplication="false" clearApplicationSettings="false" />
	<application path="apps\demo.apk" applicationType="Native" />
	<devices>
		<device deviceId="R32F108Y08W" providerId="ef64b429-9c24-4d4d-a926-5ed446028c05" />
	</devices>
	<properties>
		<property name="url" value="http://quamotion.mobi" />
	</properties>
	</settings>


Enabling or disabling HTML Logging
----------------------------------

You can enable or disable logging by changing the value of the ``htmlLoggingEnable`` node. 

Logging is enabled with the node is absent, or has a value of ``true``. Logging is disabled when the node has a value of ``false``.

Determine how the application is started: the Replay Settings and Spy Settings
------------------------------------------------------------------------------

The Replay Settings (the ``replaySettings`` element) and Spy Settings (the ``spySettings`` element) define how the application 
is started whenever you run a test or open the Coded UI Test Builder.

When you launch the Coded UI Test Builer, the Spy Settings control how the application
is started; when you run a test, the Replay Settings control how the application is started.

Both elements have the same attributes:

* Restarting the application (``restartApplication``). If the value is ``true``, the application is restarted every time. If the value is ``false``, the
	application is not restarted if the application is already running on the device. By default, the application is
	restarted when you run a test (to ensure a proper start state for your tests), and the application is not restarted
	when you open the Coded UI Test Builder (so you don't need to navigate to the screen you were working on).

* Reinstalling the application (``reinstallApplication``). If the value is ``true``, the application is reinstalled every time. If the value is ``false``, the
	application is not reinstalled if the latest version of the application is already installed on the device. 
	By default, this value is ``false``, so that the application is reinstalled only if you have a new version of the application.
	This helps save a significant amount of time.

* Clearing the application settings (``clearApplicationSettings``). If the value is ``true``, the application settings are cleared every time. If the value is
	``false``, the application settings are never cleared. By default, the application settings are cleared when you run a
	test (to ensure a proper start state for your test), and the application settings are not cleraed when you open the
	Coded UI Test Builder (so you don't need to reconfigure your app).

Set the application the tests launch
------------------------------------

The ``application`` node allow you to specify which application the tests launch. 

The ``applicationType`` attribute determines which kind of application you want to launch. Use the value ``Native`` for both
native and hybrid applications. Use the value ``Web`` for web applications.

For native and hybrid apps, the ``path`` attribute determines the path to the installation package (``.ipa`` or ``.apk``) 
of the application you want to test. The value of the ``path`` attribute is the path, relative the the folder 
in which the ``Settings.MobileTestSettings`` folder is located, of the installation package.

For web apps, you do not need to specify the ``path`` attribute. Instead, specify the URL of the web site to which you want to
navigate in your tests.

Specifying the devices on which the tests run
---------------------------------------------

The ``devices`` determines on which the devices the test runs. A ``device`` node exists for each device on which the test runs.

A ``device`` node contains the following attributes. You must specify the ``providerId`` attribute and either the ``deviceId`` or
the ``where``. Use the ``deviceId`` attribute if you want to run the tests on a well-known device. Use the ``where`` attribute
if you want to run the tests on a device that meets certain criteria.

* The ``providerId`` attribute is required and contains the Guid of the device provider that manages the device. For
	Android devices that are connected locally, this is ``EF64B429-9C24-4D4D-A926-5ED446028C05``; for iOS devices that
	are connected locally, this is ``61FEE998-7171-4B09-9D8A-511136D30EC9``.
* The ``deviceId`` attribute contains the unique ID of the device. For Android devices, this is the serial number of the device;
	for iOS devices, this is the UDID of the device. You must specify the ``deviceId`` attribute if you do not specify the
	``where`` attribute.
* The ``where`` attribute allows you to specify certain conditions the device must meet. For example, if your test lab contains
	multiple Android devices, and you want to run a test on any Android 5 device, you can use the ``where`` attribute to 
	specify that condition. The test will run on the first available device that meets the value of the ``where`` attribute.
	See the next section for more information on the syntax.
* The ``orderBy`` attribute is used together with the ``where`` condition and allows you to sort the devices that match the ``where``
	condition. The test wil run on the first available device.

Properties you can use in the ``where`` and ``orderBy`` conditions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default, you can use the following properties in the ``where`` and ``orderBy`` conditions:

* ``Name``. Contains the device name.
* ``ViewPort.Width``. The width of the device view port (the device screen).
* ``ViewPort.Height``. The height of the device view port (the device screen).
* ``Configuration.OperatingSystem``. The operating system of the device. Either ``Android`` or ``iOS `.
* ``Configuration.Version``. The version of the mobile operating system, such as ``5.0`` for Android 5.0.
* ``Configuration.CpuType``. The type of CPU in the device. Values include ``x86``, ``x86_64``, ``ARMv5``, ``ARMv6``, ``ARMv7`` and ``ARM64v8``.

The ``where`` syntax
~~~~~~~~~~~~~~~~~~~~

The value of a where condition is ``PropertyName condition PropertyValue``. For example: ``Name = "Google Nexus 6"``.
You can combine multiple conditions using the ``And`` and ``Or`` operators. For example ``Name = "Google Nexus 6" AND Configuration.Version.Major = 5``.

The ``orderBy`` syntax
~~~~~~~~~~~~~~~~~~~~~~

The ``orderBy`` value is the name of the property by which you want to order the results. You can order by one property only. 

Passing properties to the tests
-------------------------------

You can pass properties to the tests using the ``properties`` element. Each property is represented by a ``property`` element, where the 
``name`` attribute contains the name of the property and the ``value`` property the value of the property.

For more information on to use properties, see :doc:`how-to-pass-properties-to-mobile-coded-ui-tests`.