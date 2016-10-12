``ideviceinfo`` - Show information about the first connected device
===================================================================

Show information about the first connected device.

Synopsis
""""""""

.. code-block:: None

    ideviceinfo [OPTIONS]

Options
"""""""

===========  ===================  =======================================================
Short Name	 Long Name	          Value 
===========  ===================  =======================================================
-d           --debug              enable communication debugging.
-u           --udid               ``UDID`` target specific device by its 40-digit device UDID.
-q           --domain             ``NAME`` set domain of query to ``NAME``. Default: None.
-k           --key                ``NAME`` only query key specified by ``NAME``. Default: All keys.
-x           --xml                output information as xml plist instead of key/value pairs.
-h           --help               prints usage information
===========  ===================  =======================================================

Known domain names are:

* ``com.apple.disk_usage``
* ``com.apple.disk_usage.factor`` 
* ``com.apple.iqagent``
* ``com.apple.purplebuddy``
* ``com.apple.PurpleBuddy``
* ``com.apple.mobile.chaperone``
* ``com.apple.mobile.third_party_termination`` 
* ``com.apple.lockdownd``
* ``com.apple.lockdown_cache``
* ``com.apple.xcode.developerdomain`` 
* ``com.apple.international``
* ``com.apple.mobile.data_sync``
* ``com.apple.mobile.tethered_sync``
* ``com.apple.mobile.mobile_application_usage`` 
* ``com.apple.mobile.backup``
* ``com.apple.mobile.nikita``
* ``com.apple.mobile.restriction``
* ``com.apple.mobile.user_preferences`` 
* ``com.apple.mobile.sync_data_class``
* ``com.apple.mobile.software_behavior``
* ``com.apple.mobile.iTunes.SQLMusicLibraryPostProcessCommands`` 
* ``com.apple.iTunes.accesories`` 
* ``com.apple.mobile.internal``
* ``com.apple.mobile.wireless_lockdown`` 
* ``com.apple.fairplay`` 
* ``com.apple.iTunes`` 
* ``com.apple.mobile.iTunes.store`` 
* ``com.apple.mobile.iTunes`` 

Authors
"""""""

* Nikias Bassen
* Man page written to conform with Debian by Julien Lavergne.

On The Web
""""""""""

`libimobiledevice.org <http://libimobiledevice.org>`_