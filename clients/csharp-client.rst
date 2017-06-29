Quamotion C# Client
===================
This document describes how to create a NUnit test in C# to automate your tests.

Create a new NUnit project
""""""""""""""""""""""""""

To create a new NUnit project, follow these steps:

1. Open Visual Studio by clicking `Start`,  typing `Visual Studio` and hitting ENTER.
2. When Visual Studio has opened, click `File`, `New`, `Project`
3. Under `Templates`, `Visual C#`, `Windows`, select `Class Library`.
4. Select `.NET Framework 4.6.1` as the target framework.
5. Provide a name for your project, such as `AcquaintanceTest` and click `OK` to create your project.

   .. image:: vs-new-project.png
     :width: 75%

You've now created your first test project!

Add the required dependencies to your project
""""""""""""""""""""""""""""""""""""""""""""""

Before you can write mobile tests, you need to add some required dependencies to your project.
In Visual Studio, dependencies are imported as NuGet packages.

To create a mobile test with Quamotion and NUnit, you need to add the `quamotion-webdriver-client`,
`NUnit` and `NUnit3TestAdapter` packages.

To add the Quamotion and NUnit NuGet packages:

1. In the `Solution Explorer`, right-click the `AcquaintanceTest` project and select
   `Manage NuGet packages`.

   .. image:: vs-add-nuget.png
     :width: 75%

2. In the `NuGet: Acquaintance Test` window, Click `Browse`, select `Include prerelease`
   and search for `quamotion-webdriver-client`.

   .. image:: vs-select-nuget.png
     :width: 75%

3. Click the `quamotion-webdriver-client` NuGet package and click `Install`.

   .. image:: vs-nuget-install.png
     :width: 75%

4. In the `Review Changes` screen, review the changes and click `OK`.

   .. image:: vs-nuget-review.png
     :width: 50%

5. In the `NuGet: Acquaintance Test` window, Click `Browse` and search for `NUnit`.

6. Click the `NUnit` NuGet package and click `Install`.

7. In the `Review Changes` window, review the changes and click `OK`. 

8. In the `NuGet: Acquaintance Test` window, Click `Browse` and search for `NUnit3TestAdapter`.

9. Click the `NUnit3TestAdapter` NuGet package and click `Install`.

10. In the `Review Changes` window, review the changes and click `OK`. 

11. You can now  close the `NuGet: AcquaintanceTest` window.

Add a test which launches the iOS Acquaint app
""""""""""""""""""""""""""""""""""""""""""""""

You are now ready to write your first test. You'll use NUnit to write your test.

NUnit tests allow you to write ``[SetUp]`` methods, which are executed before your tests launch.
You'll use the ``[SetUp]`` method to create a new session, which will start the Acquaint app
on your device.

To create a new session, you create a new instance of the ``AppDriver`` class. To create a new instance
of this class, you need to provide an ``AppCapabilities`` object which specifies which application
you want to start, and on which device you want to start the application.

Once you've created a ``[SetUp]`` method, you also need to make sure your session is closed
when your test completes. You can do this by adding an ``[TearDown]`` method, which runs ater
your test has completed. In this ``[TearDown]`` method, you'll stop the application on the device
by removing the session you've created in the ``[SetUp]`` method. You can do so by calling the
``Quit()`` method on the ``AppDriver`` class.

1. Rename the `Class1` class to `AcquaintTest`.
   
   .. code-block:: csharp

     public class AcquintantTest
     {
     }

2. To indicate the test is a NUnit test, add the ``[TestFixture]`` attribute to the test.

   .. code-block:: csharp

     [TestFixture]
     public class AcquintantTest
     {
     }

3. Add the code which will initialize your session. You'll also add a variable which stores the
   current session:

   .. code-block:: csharp

      [TestFixture]
      public class AcquintantTest
      {
          private AppDriver driver;

          [SetUp]
          public void SetUp()
          {
              AppCapabilities capabilities = new AppCapabilities(
                  deviceId: "221373bf136e8e8962fe978e74f4c92af330c6ba",
                  appId: "demo.quamotion.Acquaint",
                  appVersion: "1.51",
                  clearApplicationSettings: false);

              this.driver = new AppDriver(capabilities);
              this.driver.WaitUntilReady();
          }
      }

4. Add the code which removes your session.

   .. code-block:: csharp

      [TestFixture]
      public class AcquintantTest
      {
          private AppDriver driver;

          [..]

          [TearDown]
          public void TearDown()
          {
              this.driver.Close();
          }
      }

5. Add a placeholder for the test you'll write in the next task

   .. code-block:: csharp

      [TestFixture]
      public class AcquintantTest
      {
          [..]

          [Test]
          public void EditAcquaintanceTest()
          {
          }
      }

You can test the test scripts

1. In the `Solution Explorer`, right click the `AcquaintanceTest` project and select `Build`.
2. Click `Test`, `Windows`, `Test Explorer`. The `Test Explorer` pane will appear

   .. image:: vs-nuget-review.png
     :width: 50%

3. Right click the `EditAcquaintanceTest` test and click `Run`.
   It may take a few seconds, the but Acquaint application will launch on your device
   and will then close.