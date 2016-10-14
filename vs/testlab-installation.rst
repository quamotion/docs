Preparing a Test Server in a Test Lab
=====================================

You can create a test lab in which you continuously test or monitor your app on multipe Android or iOS
devices with Quamotion tests.

In a test lab, your tests run unattended, without the need for user interaction. Once the test have
completed, you can analyze the test results.

The test scripts that execute in your test lab are standard Mobile Coded UI Test.

This document describes the steps you must take to prepare a server in a test lab so that it can run
Quamotion tests.

System Requirements
-------------------

Hardware Requirements
~~~~~~~~~~~~~~~~~~~~~

We recommend your test server meets or exceeds the following requirements:

* 1.6 GHz or faster processor
* 2 GB of RAM for x64
* 2 GB of available hard disk space before installation
* 1 GB of available hard disk space after installation
* DirectX 9-capable video card running at 1024 x 768 or higher display resolution

USB Configuration
~~~~~~~~~~~~~~~~~

We recommend you connect your mobile devices to your test server using a USB connection.
In this case, we recommend you use:

* A dedicated PCIe USB 3.0 controller
* A powered USB 3.0 hub, where each port is capable of providing at least 900mA to each device simultaneously
* High quality USB cables

WiFi configuration
~~~~~~~~~~~~~~~~~~

You can also connect to your mobile devices over WiFi. If you want to connect to mobile devices over WiFi,
we recommend:

* You set up a dedicated WiFi network and access point for your mobile devices
* Your server connects to the WiFi access point over Ethernet
* Your server and devices are in the same subnet
* There is a ping latency of less than 5ms between the server and the devices

Guidance for Virtual Machines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Unless you connect to cloud devices only or connect to your devices over WiFi, we recommend your test server is a physical server.

Required Software
~~~~~~~~~~~~~~~~~

The following software must be installed on your server:
* Windows 7 Service Pack 1 or higher, or Windows Server 2008 R2 or later. The operating system can be a 32-bit or a 64-bit operating system.
* `.NET Framework 4.5 or later <http://www.microsoft.com/en-us/download/details.aspx?id=30653`>_
* `Agents for Microsoft Visual Studio 2015 <https://www.microsoft.com/en-us/download/details.aspx?id=48152>`_
* The latest version of Quamotion

If you want to run tests on iOS devices that are connected to your test server over USB, you also need to install:
* `iTunes <http://www.apple.com/itunes/download/>`
* `Apple Developer Disk <install-ios-developer-disk>`

Preparing your test server
--------------------------

Installing the required software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can manually install the required software. We have also prepared Chocolatey packages for the required components, so you can run
the following command in a command prompt with elevated privileges

1. To install Chocolatey, if Chocolatey is not yet installed:

   .. code-block:: shell

    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

2. Close the Command Prompt and re-open the Command Prompt, with administrative privileges

3. To install Quamotion and the dependencies:

   .. code-block:: shell

	choco install -y dotnet4.5 
	choco install -y microsoft-build-tools-2015 -version 14.0.23107.10
	choco install -y quamotion -version 0.1.1385 

4. If you plan to run tests on iOS devices:

   .. code-block:: shell

    choco install -y itunes
   

Connecting your devices
~~~~~~~~~~~~~~~~~~~~~~~

We recommend you connect your devices to your test server using a USB connection. If you do, please make sure
the drivers for your iOS and Android devices are installed on your PC.

To verify all devices are recognized, you can perform the following procedure:

1. Open the Quamotion Command Prompt
2. Type ``Quamotion.CommandLine -m devices``
3. This will list all devices. Make sure your device is available in this list.

Where to go from here
---------------------

Once you have installed you test server, you can `run tests on your test server <testlab-run-tests>`_.