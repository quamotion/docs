Set Up Port Forwarding 
======================

Through port forwarding, you can use a port on your PC to communicate with an app running on the iOS device.

Setting up Port Forwarding
""""""""""""""""""""""""""

To set up port forwarding, run the following command test:

.. code-block:: none

    iproxy.exe local_port device_port 

where ``device_port`` is the port on the iOS device, and ``local_port`` is the port on your PC. 

After you have run this command, you can use the socket at ``127.0.0.1:local_port`` to communicate with the application 
listening at port ``device_port`` on your device. 
