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