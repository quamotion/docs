Quamotion Command Line: The ``buildextensionpackage`` command
=============================================================

Summary
-------

By default, the Quamotion software supports the standard iOS and Android operation system widgets
(or controls).

You can add support for 3rd party frameworks using *Extension Packages*. You create Extension Packages
using the ``buildextensionpackage`` command. This command will automatically detect any 3rd parth frameworks
in your application and create extension packages for these 3rd party frameworks.

Usage
-----

To use the ``buildextensionpackage`` command, type the following:

.. code-block:: shell

    Quamotion.CommandLine -m buildextensionpackage --path [path] --namespace [namespace] --filename [filename]


where:

* ``[path]`` is the path to the .apk file for which to generate an extension package
* ``[namespace]`` is the namespace in which to generate the Coded UI Controls
* ``[filename]`` is the base name for the widget XML and assembly files.
