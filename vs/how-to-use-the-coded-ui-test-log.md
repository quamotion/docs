How To: Use the Coded UI Test Log
=================================

Whenever you run a Mobile Coded UI Test, the Coded UI Test Log records important information about your coded UI test runs.

Information in the Coded UI Test Log
------------------------------------

By default, the Coded UI Test Log contains the following information:

* The application and device that were used during the test run.
* All the individual gestures (such as Taps) that were performed, including a screenshot of the control on which the gesture was performed.
* A screenshot of the application at the time the test completed.

Viewing the Coded UI Test Log
-----------------------------

When you run a Mobile Coded UI test, an output link will be added to the Test Explorer results. 
Log files all test runs, regardless of the test passing or failing.

To view the Coded UI Test Log, do the following:

1. In the *Test* menu, choose *Windows*  and then select *Test Explorer*
2. In the *Test Explorer*, select the Mobile Coded UI Test you want to run,
	open its shortcut menu, and then select *Run Selected Tests*.
3. Wait for the test to complete (pass or fail).
4. In the *Test Explorer* window, click the *Output* link.
5. A new window will open, which contains the output for the test and includes a link
	to the action log.
6. Click the *UITestActionLog.html* link.
7. The Coded UI Test Log is displayed in your web browser.

Enabling and disabling Coded UI Test Logs
-----------------------------------------

Coded UI Test Logs are enabled by default. On devices with large screens, the screenshot operations may take some time to complete -
usually between 1 and 5 seconds.

You may want to disable the Coded UI Test Logs during certain test runs. To disable the Coded UI Test Logs, you need to edit the
Settings.MobileTestSettings file. For more information on how to update this file, see 
`How To: Change Mobile Coded UI Test Settings <how-to-mobile-test-settings>`_.