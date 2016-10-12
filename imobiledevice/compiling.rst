Compiling libimobiledevice on Windows Visual C++ (Visual Studio)
================================================================

We've compiled libimobiledevice on Windows using Visual Studio. If you don't want to compile the software yourself,
feel free to download the binaries from our :doc:`Download </download>` page.

If you want to compile libimobiledevice on Windows yourself, here are the build instructions:

Installing Visual Studio
"""""""""""""""""""""""""

You'll need Visual Studio 2015 or later to compile libimobiledevice on Windows

Checking out the sources
""""""""""""""""""""""""

Clone the following repositories:

* https://github.com/libimobiledevice-win32/libplist
* https://github.com/libimobiledevice-win32/libusbmuxd
* https://github.com/libimobiledevice-win32/libimobiledevice
* https://github.com/libimobiledevice-win32/ideviceinstaller

Once you've checked out the source, make sure to open each solution and restore all NuGet packages.

Compiling libimobiledevice
""""""""""""""""""""""""""

You can now compile libimobiledevice. Make sure to compile libimobiledevice in the correct order:

* libplist
* libusbmuxd
* libimobiledevice
* ideviceinstaller

Continuous Integration Builds
"""""""""""""""""""""""""""""

We use AppVeyor for continuous integration of libimobiledevice on Windows. Each repository has an AppVeyor
build badge, from where you can access the CI page.