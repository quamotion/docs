How To: Run a mobile test project in the cloud using AppVeyor
=============================================================

Using AppVeyor it is possible to replay mobile test projects in the cloud. 
This holds true for all mobile test projects configured to run on devices from Remote Test Kit (RTK).

Create and link an AppVeyor account to your repository
------------------------------------------------------

Create an AppVeyor account or sign up with an existing account. Using AppVeyor for open source projects is free. 
Next you need to link your project (repository) to the AppVeyor account. More information and options can be found
on `Getting started <http://www.appveyor.com/docs>`_

Configure your mobile test project
----------------------------------

Place the following three altered files in the root of your repository. Below you find an example/template for each of the tree files.

 * ``appveyor.yml``: appveyor configuration file
 * ``qm-setup.ps1``: script downloading and installing the latest Remote Test Kit provider and Quamotion 
 * ``rtk-init.ps1``: stores the auto login credentials on the test server.

appveyor.yml
~~~~~~~~~~~~
The following ``appveyor.yml`` file is an example configuration. Please modify the following:
 * ``rtkUserName``: your rtk user name
 * ``rtkPassword``: your rtk password (use a secure environment variable )
 * build script: the build script for the projects to build

.. code-block:: yml

    version: 1.0.{build}.0
    os: Unstable
    environment:
      rtkUserName:
        secure: fNrV+FdqnGE/HKs/4C4rPh7VmjsvPNbks4Enmrma/SM=
      rtkPassword:
        secure: wSvwmRlrlui6EZprPKIPfw==
    
    install:
      - cmd : PowerShell -ExecutionPolicy unrestricted -file qm-setup.ps1
      - cmd : C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy unrestricted -file rtk-init.ps1
    
    build_script:
      - msbuild qm-test\qm-test.csproj /p:Configuration=Release /p:Platform=AnyCPU /logger:"C:\Program Files\AppVeyor\BuildAgent\Appveyor.MSBuildLogger.dll"
    after_test:
      -cmd : C:\Progra~2\Quamotion\bin\Quamotion.CommandLine.exe -m Harvest

qm-setup.ps1
~~~~~~~~~~~~

Copy the following script in the qm-setup.ps1 file.

.. code-block:: powershell

    $rtkMSIFileName = "remotetestkit-en"
    
    $Source = "https://appkitbox.com/en/wp-content/download/remotetestkit-en.exe"
    $rtkMSIFile = "$PSScriptRoot\$rtkMSIFileName.exe"
    Invoke-WebRequest $source -OutFile $rtkMSIFile
    
    $process = Start-Process "$rtkMSIFile" -ArgumentList "/SP /verysilent /suppressmsgboxes" -Wait -Passthru
    echo "Installer returned $($process.ExitCode)"
    
    $qmMSIFileName = "Quamotion.Setup"
    
    $Source = "http://qmcdn.blob.core.windows.net/release-unstable/en-us/Quamotion.Setup.msi"
    $qmMSIFile = "$PSScriptRoot\$qmMSIFileName.msi"
    Invoke-WebRequest $source -OutFile $qmMSIFile
    
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $psLogFile = "$PSScriptRoot\Deploy.$timestamp.log"
    $msiLogFile = "$PSScriptRoot\$msiFileName.$timestamp.log"
    $msiArguments = "ADDLOCAL=ALL /l*v ""$msiLogFile"" /qn /i ""$qmMSIFile"""
    $process = Start-Process -FilePath "msiexec.exe" -ArgumentList $msiArguments -Wait -Passthru
    echo "Installer returned $($process.ExitCode)"
    
    exit

rtk-init.ps1
~~~~~~~~~~~~

Copy the following script in the ``rtk-init.ps1`` file.
This script stores the RTK credentials as given in the ``appveyor.yml`` file.

.. code-block:: powershell

    $Assembly = [System.Reflection.Assembly]::LoadFrom("C:\Program Files (x86)\Quamotion\bin\Quamotion.Devices.dll")
    
    $rtkSettings = New-Object -TypeName Quamotion.Devices.RemoteTestKit.RemoteTestKitSettings -ArgumentList "Public"
    
    $rtkSettings.UserName = $env:rtkUserName
    $rtkSettings.Password = $env:rtkPassword