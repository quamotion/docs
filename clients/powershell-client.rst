Quamotion PowerShell Client
===========================

Because PowerShell is a scripted language, and not a compiled language, it
is easier to create and edit scripts as you go. However, all the scripts you're about the write in PowerShell
could easily be written in Java or C#.

The `Quamotion PowerShell Client` is included in the Quamotion WebDriver package. 

Installing PowerShell
"""""""""""""""""""""
Make sure you have the latest PowerShell installed on your machine. We recommend to install PowerShell 5 or higher.

Windows
'''''''
You can find installers for the most recent PowerShell on https://github.com/PowerShell/PowerShell. Select you operating system and download / install the most resent PowerShell.

On Windows you can use the Shell or the PowerShell editor. To launch the editor 

1. Click on Windows Start
2. Launch Windows PowerShell ISE application.

MacOs
'''''
Install PowerShell for MacOS if you want to create scripts using MacOS:
.. code-block:: bash

   wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell-6.0.0-alpha.9.pkg
   sudo installer -pkg powershell-6.0.0-alpha.9.pkg -target /

Linux
'''''
Install PowerShell for Linux if you want to create scripts on Linux:

For Ubuntu:

.. code-block:: bash

   wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb
   sudo dpkg -i powershell_6.0.0-alpha.9-1ubuntu1.16.04.1_amd64.deb

For RedHat or CentOS:

.. code-block:: bash

   sudo yum install https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell-6.0.0_alpha.9-1.el7.centos.x86_64.rpm

Automate with PowerShell
""""""""""""""""""""""""

To load the Quamotion WebDriver PowerShell module you can use the Import-Module function. Add this line at the start of your script.

.. code-block:: powershell

   Import-Module "path-to-quamotion-webdriver\wdclient.psm1"

If needed modify the execution policy for PowerShell. Please find more information about this function on https://technet.microsoft.com/en-us/library/ee176961.aspx

.. code-block:: powershell

   Set-ExecutionPolicy Unrestricted