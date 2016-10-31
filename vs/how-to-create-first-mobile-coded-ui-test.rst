How To: Create your First Mobile Coded UI Test
==============================================

Before you get started
----------------------

Before you can create your first Mobile Coded UI Test, make sure you have
:doc:`created your Mobile Coded UI Test Project <how-to-create-mobile-coded-ui-test-project>` and you have
:doc:`configured your Mobile Coded UI Test Project <how-to-configure-mobile-coded-ui-test-project>`.

Create your first Mobile Coded UI Test
--------------------------------------

To generate a Mobile Coded UI Test, you need to perform two steps:

1. First, you add controls to your UI Map. 
2. You can also add Assertions to the UI Map. 
   Assertions validate a set of properties of yoru controls
3. Then, you script the actions that you want to automate

Launch the Coded UI Test Builder for Mobile Apps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Open your Mobile Coded UI Test Project
2. In the Solution Explorer, locate the ``MobileCodedUITest1.cs`` file and double click the file to open it.
    .. image:: how-to-create-first-mobile-coded-ui-test-solution-explorer.png
3. In the ``MobileCodedUITest1.cs`` file, put the mouse cursor inside the ``MobileCodedUITestMethod1`` method. 
   This method is the block of code that will contain your test automation script.
4. Right-click on the current location and select *Generate Code for Mobile Coded UI Tests* and *Use Coded UI Test Builder...*
    .. image:: how-to-create-first-mobile-coded-ui-test-launch-builder.png
5. Your application will now be deployed to your device and started on the device.

Add Controls to the UI Map
~~~~~~~~~~~~~~~~~~~~~~~~~~

One you have opened the Coded UI Test Builder, you can add controls to the UI Map.

To add a control to the UI Map:

1. Once the your application and the Coded UI Test Builder have launched, move your mouse over the control
   you want to add to the UI Map and click *CTRL+SHIFT+I*. The Coded UI Test Builder will identify the
   control and add it to the UI Map.
2. Repeat the step for all other controls that you want to interact with.
3. Click the *Generate* button to generate the code for the UI Map.

Add Assertions to the UI Map
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once you have opened the Coded UI Test Builder, you can add controls to the UI Map.

To add an assertion to the UI Map:

1. Once the your application and the Coded UI Test Builder have launched, move your mouse over the control
   you want to add to the UI Map and click *CTRL+SHIFT+I*. The Coded UI Test Builder will identify the
   control and add it to the UI Map.
2. Then, in the Coded UI Test Builder, select the property for which you want to add an assertion.
3. Click the *Add Assertion* button to generate the assertion. It will be used in the test
   to verify that the value of the property is correct. Optionally, specify an error message
   that should be displayed if the assertion fails.
4. Click the *Add and Generate* button to generate the code for the assert method.

Find the references to your mobile controls
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once controls have been added to the the UI Map, you can reference them from code. To get the reference to a control:

1. Open the UI Map by double-clicking the `UIMap` file.
2. Navigate through the tree of elements to find your control. Then, right-click the element and select
   *Copy reference to clipboard*.
3. Open the *MobileCodedUITest1.cs* or *MobileCodedUITest1.vb* file and navigate to the part of the file where you
   want to reference the control. Then, click `CTRL+V` to copy the reference to the element to the editor.

Script your Mobile UI Test Case
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To generate the script for your Mobile UI Test Case, follow these steps:

1. In the *Solution Explorer*, open the ``MobileCodedUITest1.cs`` or ``MobileCodedUITest1.vb`` file. 
2. You can now add code to the ``CodedUTTestMethod1`` method for the actions needed to run the test.
   For example, to execute a Tap on a control, you can write the following code:

   ``Gesture.Tap(this.UIMap.Control);``

   To execute an Assertion, you can write the following code:

   ``this.UIMap.AssertMethod1();``

Run the Mobile Coded UI Test
----------------------------

To run your Mobile Coded UI Test, follow these steps:

1. Build your solution by clicking *Build* and then *Build Solution*
2. Then, open the *Text Explorer* by clicking *Test*, *Windows* and *Test Explorer*
3. Select your Test, for example, *MobileCodedUITestMethod1* and click *Run*
4. The mobile app launches, and your actions are executed.
5. After the test is finished, the Test Explorer shows information about whether the test
   has passed or failed.
