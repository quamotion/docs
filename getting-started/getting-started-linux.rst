Linux
=====

To install the Quamotion server, you first need install a couple of dependencies.

If you're using Ubuntu, you can install them using :code:`apt-get`:

.. code-block:: bash

   sudo apt-get update
   sudo apt-get install -y libunwind8 libicu55 libc++-dev zlib1g

If you're using RedHat or CentOS, you can install them using :code:`yum`:

.. code-block:: bash

   sudo yum install libunwind libicu libc++ zlib1g

Next, you can download and install the Quamotion server. For Ubuntu:

.. parsed-literal::

   mkdir quamotion-webdriver
   wget |webdriver_ubuntu_url|
   tar -xvzf |webdriver_ubuntu_filename|

For RedHat or CentOS:

.. parsed-literal::

   mkdir quamotion-webdriver
   wget |webdriver_rhel_url|
   tar -xvzf |webdriver_rhel_filename|

To start the Quamotion server, you can simply launch the Quamotion.WebDriver executable:

.. code-block:: bash

   ./Quamotion.WebDriver

The Quamotion server will now start. You can connect to the Quamotion server using any browser, by navigating to `<http://localhost:17894>`_.