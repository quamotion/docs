OS X
====

To install the Quamotion server, you first need install the latest version of OpenSSL. Let's do that using `HomeBrew <http://brew.sh/>`_:

.. code-block:: bash

   brew update
   brew install openssl
   ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
   ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/

Next, you can download and install the Quamotion server:

.. parsed-literal::

   mkdir quamotion-webdriver
   wget |webdriver_osx_url|
   tar -xvzf |webdriver_osx_filename|

To start the Quamotion server, you can simply launch the Quamotion.WebDriver executable:

.. code-block:: bash

   ./Quamotion.WebDriver

The Quamotion server will now start. You can connect to the Quamotion server using any browser, by navigating to `<http://localhost:17894>`_.

If you want to create scripts using PowerShell, now would be a good time to install that, too:

.. code-block:: bash

   wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.9/powershell-6.0.0-alpha.9.pkg
   sudo installer -pkg powershell-6.0.0-alpha.9.pkg -target /
