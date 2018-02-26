Fast, Cloud-Based Mobile Test Automation with Quamotion and Genymotion
======================================================================

Quamotion has released a major update to its mobile app testing software, adding support for Android virtual devices,
powered by `Genymotion Cloud <https://cloud.geny.io>`_. Simply put, you can now run your Quamotion tests on more than
100 types of Android virtual devices powered by Genymotion.

As we're partnering with Genymotion team for the upcoming Mobile World Congress, let's see together what this means
for developers and testers

Testing with Quamotion WebDriver & Quamotion Cloud
--------------------------------------------------

With Quamotion WebDriver, developers and testers can automate the UI acceptance tests for their mobile applications.
There’s a focus on replicating the real user experience – including extensive support for gestures, cross-application
interactions, and more.

For every test, a test report is generated, which includes detailed pass/fail results and diagnostic information such
as device logs, screenshots and more.

`Quamotion Cloud <https://cloud.quamotion.mobi>`_ is an online platform which allows teams to upload their tests and
execute them to hundreds of physical devices and now Android virtual devices hosted by Quamotion and its partners.
Integration with CI systems such as Bitrise or Gitlab means teams can test every build of their app under real user conditions.

Android virtual devices for faster testing and increased coverage
-----------------------------------------------------------------

With this release, Quamotion has added support for running tests on cloud Android virtual devices powered by Genymotion.
Genymotion is a famous Android emulator used by millions of developers on Desktop and is now also available in the cloud
through its Genymotion Cloud offer covering the full application lifecycle. This opens to many use cases including
automated testing in a CI environment. 

There are a couple of reasons why you’d want to use virtual devices in addition to physical devices:

* Reduce your testing lifecycle by running your tests in parallel or splitting your tests and dispatching them on
  several devices at the same time. As virtual devices can be spawn instantly compared to physical devices
  (you often need to wait a bit for a device availability), you can scale your tests easily and increase coverage.
* Optimize your testing costs by running some of your tests on virtual devices. Virtual device plan is cheaper
  than physical device plan  - € 295/month for virtual device plans compared to € 495/month for physical device
  plans. Each plan gives you access to a concurrent device slot, which you can use to test on any device included
  in your plan; but only one device at a time. The prices listed here are for yearly commitments.

Defining a test strategy using virtual and mobile devices
---------------------------------------------------------

Both virtual and physical devices can be valuable during your testing. Testing on virtual devices is faster and costs
less, but do not test how your application performs on real end-user devices because of manufacturer OS customization
layer.

You can set up a hybrid strategy, where you use virtual devices to ‘smoke test’ your latest app builds in your
continuous integration process (most tests don’t rely on manufacturer OS custom layer) during feature development,
and use physical devices to test your application on actual devices once per day or before you release your app to
the app store.

Benefits of using Genymotion virtual devices with Quamotion Cloud
-----------------------------------------------------------------

Using Genymotion virtual devices in Quamotion Cloud allows you to test your app more frequently, and find bugs faster. 
Want to know more? Visit `Quamotion Cloud <https://cloud.quamotion.mobi>`_ to get started.
