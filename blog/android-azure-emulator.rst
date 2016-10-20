Running the Visual Studio Android emulator on Windows Azure
===========================================================

In this article, we'll help you install the Visual Studio Android emulator on Windows Azure

Prerequisites
-------------

You need to:

* Be familiar with Windows Azure and Windows Azure PowerShell
* Download and install the `Visual Studio Emulator for Android <http://go.microsoft.com/fwlink/?LinkID=517147>`_
* Have the Android Development Kit (ADK) installed locally
* Download the `x86 build of the android-vnc-server <http://xmodulo.com/how-to-run-vnc-server-on-android-x86.html>`_
* Have a `VNC Client <http://www.realvnc.com/download/viewer/>`_ installed locally

Resize the Azure Disk
---------------------

* Copy ``C:\Program Files (x86)\Microsoft Visual Studio Emulator for Android\1.0\vsemu.vhd`` to a local folder.
* Make a new VM
* Use Hyper-V manager to resize vsemu.vhd to 3GB

You need to resize ``vsemu.vhd`` so that its size is a multiple of 1MB. We'd recommend you resize it to 3 GB.

Configuring the VM to use a DHCP IP address on eth0
---------------------------------------------------

* Download the `android-x86-4.4-r2.iso CD <http://www.android-x86.org/download>`_ and boot the Android emulator from this file.
* Choose Live CD - Debug Mode

.. code-block:: shell

    cd data/ 
    mkdir mnt 
    mknod sda3 b 8 3 
    mount sda3 mnt

.. code-block:: shell

    cp mnt/ramdisk ramdisk.bak
    mkdir ramdisk
    cd ramdisk
    gunzip -c ../mnt/ramdisk | cpio -i

.. code-block:: shell

    vi init.donatello.rc

.. code-block:: shell

    find .| cpio -H newc -o -v | gzip -9 -c > ../mnt/ramdisk

.. code-block:: shell

    umount ../mnt

Uploading the Android hard disk to Windows Azure
------------------------------------------------

Follow these steps; for more information see `Step-By-Step: Upload your Own VHD to Add to the Gallery in Azure <http://blogs.technet.com/b/canitpro/archive/2014/05/08/step-by-step-upload-your-own-vhd-to-add-to-the-gallery-in-azure.aspx>`_

* Open Microsoft Azure Powershell
* Login in to Microsoft Azure 

.. code-block:: shell

	Add-AzureAccount

* Select an Azure Subscription

.. code-block:: shell

	Select-AzureSubscription -Default -SubscriptionName "Quamotion"

* Configure your Azure Publish Settings

.. code-block:: shell

	Get-AzurePublishSettingsFile
	Import-AzurePublishSettingsFile -PublishSettingsFile "C:\..."

* Select the Azure subscription and set the current storage account

.. code-block:: shell

    Set-AzureSubscription -CurrentStorageAccountName "quamotion" -SubscriptionName "Quamotion"

* Upload the VHDs

.. code-block:: shell

    $diskVhd = "C:\Program Files (x86)\Microsoft Visual Studio Emulator for Android\1.0\vsemu.vhd"
    $sdcardVhd = "C:\Program Files (x86)\Microsoft Visual Studio Emulator for Android\1.0\sdcard.vhd"
    $diskUrl = "https://quamotionrm.blob.core.windows.net/vhds/vsemu.vhd"
    $sdcardUrl = "https://quamotionrm.blob.core.windows.net/vhds/sdcard.vhd"
    Add-AzureVhd -LocalFilePath $diskVhd -Destination $diskUrl
    Add-AzureVhd -LocalFilePath $sdcardVhd -Destination $sdcardUrl
    Add-AzureDisk -DiskName "Microsoft-VisualStudio-Emulator-Android-Disk" -MediaLocation $diskUrl -Label "Microsoft Visual Studio Android Emulator - OS Disk" -OS Linux
    Add-AzureDisk -DiskName "Microsoft-VisualStudio-Emulator-Android-SDCard" -MediaLocation $sdcardUrl -Label "Microsoft Visual Studio Android Emulator - SD Card Disk"

Creating the Azure VM
---------------------

.. code-block:: shell

    $serviceName = "qm-avm-02"
    $vmName = "qm-avm-02"
    $location = "West Europe"
    $size = "Basic_A1"
    $emulatorVm = New-AzureVMConfig -Name $vmName -DiskName 'Microsoft-VisualStudio-Emulator-Android-Disk' -InstanceSize $size |
                        Add-AzureDataDisk -Import -DiskName 'Microsoft-VisualStudio-Emulator-Android-SDCard' -LUN 0 |
                        Add-AzureEndpoint -Name 'VNC' -LocalPort 5901 -PublicPort 5901 -Protocol tcp |
                        Add-AzureEndpoint -Name 'adb' -LocalPort 5555 -PublicPort 5555 -Protocol tcp |
                        Add-AzureEndpoint -Name 'calabash' -LocalPort 7102 -PublicPort 7102 -Protocol tcp
    
    New-AzureVM -ServiceName $serviceName -VMs $emulatorVm -Location $location

Installing droidvnc_x86
-----------------------

.. code-block:: shell

    adb push droidvnc_x86 /data/
    adb shell chmod 755 /data/droidvnc_x86
