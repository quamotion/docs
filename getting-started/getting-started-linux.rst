Linux
=====

Ubuntu
------

To install the Quamotion server, you first need install a couple of dependencies.
You can install them using :code:`apt-get`:

.. code-block:: bash

   sudo apt-get update
   sudo apt-get install -y libunwind8 libicu55 libc++-dev zlib1g

Next, you can download and install the Quamotion server. For Ubuntu:

.. parsed-literal::

   mkdir quamotion-webdriver
   wget |webdriver_ubuntu_url|
   tar -xvzf |webdriver_ubuntu_filename|

To start the Quamotion server, you can simply launch the Quamotion.WebDriver executable:

.. code-block:: bash

   ./Quamotion.WebDriver

RedHat and CentOS
-----------------

For RedHat or CentOS, we provide RPM packages for you.

First, add our repository:

.. code-block:: bash

    yum install -y epel-release
    wget -nv -nc http://download.opensuse.org/repositories/home:qmfrederik/CentOS_7/home:qmfrederik.repo -O /etc/yum.repos.d/quamotion.repo

Then, download the latest RPM package and install it.

.. parsed-literal::

   wget |webdriver_rhel_url|
   yum install |webdriver_rhel_filename|

The Quamotion server will start automatically. 
You can connect to the Quamotion server using any browser, by navigating to `<http://localhost:17894>`_.