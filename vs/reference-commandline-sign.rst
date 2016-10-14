Quamotion Command Line: The ``Sign`` command
============================================

Summary
-------

The ``sign`` command allows you to re-sign iOS applications files on Windows,
without the need for you to have a Mac computer with you.

Usage
-----

You run the ``sign`` command by typing

.. code-block:: shell

	Quamotion.CommandLine -m sign 

You always must specify the following values

* ``-f`` or ``--file``: The full path to the application you want to sign. This can be any iOS 
	application package (``.ipa``) file or any valid MACH executable (for example, a ``.dylib`` file).
	The application can target one or multiple processor architectures. Files that target multiple processor
	architectures are so-called MACH files.

When you sign an application, you need to specify your code signing identity. You can do this by either specifying
a certificate and a provisioning profile, or by specifying a developer profile (as exported from XCode) and the password
for the developer profile.

To specify a certificate and provisioning profile:
*	``-c`` or ``--cert``: The certificate (``.pfx``) to use when signing. This certificate must include the private key and must not be password protected.
*	``-p`` or ``--provisioningProfile``: The path to the provisioning profile to use when signing.

To specify a developer profile:
*	``-x`` or ``--developerProfile``: Developer profile to use when signing the .IPA
*	``-y`` or ``--developerProfilePassword``: Password to use when opening the developer profile

These values are always optional:
*	``-r`` or ``--rootcert``: The root certificate (``.cer``) to use when signing. If you do not specify this value,
	a default value is used.
*	``-d`` or ``--dylib``: If you want to inject a dynamic library (dylib) into an IPA package, specify
	the path to the dylib you want to inject.
*	``-n`` or ``--nosign``: Don't code sign the package.
