``ideviceinstaller`` - Manage apps on iOS devices.
===================================================

Allows to install, upgrade, uninstall, archive, restore and enumerate installed
or archived apps on iOS devices.

===========  ==================  ============================================================================================================================================================================================================================
Short Name	 Long Name			 Value 
===========  ==================  ============================================================================================================================================================================================================================
-d           --debug             enable communication debugging
-u           --udid              UDID target specific device by its 40-digit device UDID.
-h           --help              prints usage information
-l           --list-apps         list apps installed on the device.
.            -o list_user        list user apps only (apps installed by the user)
.            -o list_sytem       list system apps only (apps available from the system firmware)
.            -o list_all         list all types of apps
.            -o xml              print output in xml format (PList)
-i           --install ARCHIVE   install app from a package file specified by ``ARCHIVE``. ``ARCHIVE`` can also be a ``.ipcc`` file for carrier bundle installation or a .app directory for developer app installation.
-u           --uninstall APPID   uninstall app specified by ``APPID``.
-g           --upgrade ARCHIVE   upgrade app from a package file specified by ``ARCHIVE``.
-r           --restore APPID     restore archived app specified by ``APPID``.
-l           --list-archives     list archived applications on the device
-a           --archive APPID     archive app specified by ``APPID``.
.            -o uninstall        uninstall the package after making an archive
.            -o app_only         archive application data only
.            -o docs_only        archive documents (user data) only
.            -o copy=PATH        copy the app archive to directory ``PATH`` when done
.            -o remove           only valid when ``copy=PATH`` is used: remove after copy
-R           --remove-archive    ``APPID remove app archive specified by ``APPID``.
===========  ==================  ============================================================================================================================================================================================================================

Authors
"""""""

* This manual page was written by Martin Szulecki.

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_