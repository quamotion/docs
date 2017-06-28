Getting Started
===============

Quamotion is a test automation framework for use with native, hybrid and mobile web apps. It automates iOS and Android apps on real devices (iOS, Android),
simulators (iOS) and emulators (Android), using the WebDriver protocol.

Supported Platforms
"""""""""""""""""""

* iOS 8 and above (`97+% of all iOS devices <https://developer.apple.com/support/app-store/>`_)
* Android 4.1 and above (`96+% of all Android devices <https://developer.android.com/about/dashboards/index.html>`_)

Why Quamotion?
""""""""""""""

Quamotion makes testing mobile apps easy. We let you focus on testing your app, while we take care of the heavy lifting required to automate it.

* You don't have to recompile your app or modify it in any way: we automate your app using the built-in automation tools of each platform.
* You can write tests in any language or tool that supports `WebDriver <https://w3c.github.io/webdriver/webdriver-spec.html>`_. 
  That includes languages and scripting platforms such as Java, PowerShell and C#.
* You can use any testing framework that supports those languages.

Using the `WebDriver <https://w3c.github.io/webdriver/webdriver-spec.html>`_ protocol is using a single, free and open protocol
for testing that has become a proposed W3C standard. This way, you avoid being locked in to vendor-specific languages.

Requirements
""""""""""""

You'll need either a Mac, Linux or Windows PC:

* Mac OS X 10.11 or higher (64-bit)
* Ubuntu 16.10 or higher (64-bit)
* RedHat Enterprise Linux 7 or higher (64-bit), or compatible distribution such as CentOS.
* Windows 7 or higher (64-bit)

From a hardware point of view, the minimum requirements to develop mobile test automation scripts are:

* An dual-core Intel i5 (Sandy Bridge or newer) or better processor
* 4 GB RAM
* 100 GB of free disk space on a SSD disk
* A display resolution of 1600 x 900 or better
* 1 available USB 2.0 port per device, providing at least 750 mA of power to the device 

Contact us for hardware specifications for servers running continuous tests.

That's it! You don't need to install any other tool for you to get started.

.. rubric:: USB Configuration

We recommend you connect your mobile devices to your test server using a USB connection.
In this case, we recommend you use:

* A dedicated PCIe USB 3.0 controller
* A powered USB 3.0 hub, where each port is capable of providing at least 900mA to each device simultaneously
* High quality USB cables

.. rubric:: WiFi configuration

You can also connect to your mobile devices over WiFi. If you want to connect to mobile devices over WiFi,
we recommend:

* You set up a dedicated WiFi network and access point for your mobile devices
* Your server connects to the WiFi access point over Ethernet
* Your server and devices are in the same subnet
* There is a ping latency of less than 5ms between the server and the devices

Instal Quamotion
""""""""""""""""

.. toctree::
   :maxdepth: 1

   getting-started-osx
   getting-started-linux
   getting-started-windows
   request-trial-license

Configure local devices
"""""""""""""""""""""""

.. toctree::
   :maxdepth: 1

   how-to-connect-android-device
   how-to-connect-ios-device

If you want to test on iOS devices, you also need to install the iOS developer disks and configure a developer profile.

.. toctree::
   :maxdepth: 1

   install-ios-developer-disk.rst
   getting-started-developer-profile.rst

