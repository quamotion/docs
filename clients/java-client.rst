Quamotion Java Client
=====================
Quamotion provides a Java library as an extension of the selenium Java library.
This document describes how to write your tests as JUnit tests.

Create a new JUnit project
"""""""""""""""""""""""""""

To create a new JUnit project in IntelliJ:

1. Start IntelliJ
2. Click `File`, `New` and `Project`
3. Select `Maven`, and set the `Project SDK` to at least 1.8
4. Complete the `GroupId`, `ArtificatId` and `Version` fields.
5. Complete the `Project Name` and `Location` fields

Add the required dependencies to your project
""""""""""""""""""""""""""""""""""""""""""""""

As a next step, add the required dependencies to your project.

1. In the `Dependencies`, add the following code between the ``<project>`` and ``</project>`` tags:
 
   .. code-block:: xml

     <dependencies>
         <dependency>
             <groupId>junit</groupId>
             <artifactId>junit</artifactId>
             <version>4.12</version>
         </dependency>
         <dependency>
             <groupId>org.seleniumhq.selenium</groupId>
             <artifactId>selenium-java</artifactId>
             <version>2.53.0</version>
         </dependency>
     </dependencies>

2. IntelliJ will ask you to import the changes in the Maven project. Click `Import Changes`.

   .. image:: intellij-import-changes.png
     :width: 50%

Add the Quamotion library to your project
"""""""""""""""""""""""""""""""""""""""""

Add the ``QuamotionDriver.Java`` library to your project. This
library will allow you to automate iOS and Android applications from within your Maven project.

1. Right-click your project and select `Open Module Settings`

   .. image:: intellij-open-module-settings.png
     :width: 50%

2. Click `Libraries`
3. Click the plus (+) icon to add a library
4. Select `Java`
5. Add the ``QuamotionDriver.Java.jar`` file, which is available for download at https://qmcdn.blob.core.windows.net/download/QuamotionDriver.Java-0.2.jar
6. Click `OK`
7. Click `OK`.

Write your tests 
""""""""""""""""
JUnit tests allow you to write ``@Before`` methods, which are executed before your test launch. Use the
``@Before`` method to create a new session, which will start the application on your device.

To create a new session, you create a new instance of the ``AppDriver`` class. To create a new instance of this
class, you need to provide an ``AppCapabilities`` object which specifies which application you want to start,
and on which device you want to start the application.

Once you've created a ``@Before`` method, you also need to make sure your session is closed when your
test completes. You can do this by adding an ``@After`` method, which runs after your test has completed.
In this ``@After`` method, you'll stop the application on the device by removing the session you've created
in the ``@Before`` method. You can do so by calling the ``quit()`` method on the ``AppDriver`` class.

1. Right-click a package and select `New` and `Java Class`
2. Provide a name for your test, such as `AcquaintTest`
3. Add the code which will initialize your session:

   .. code-block:: java

     AppDriver driver = null;
     @Before
     public void setUp2() throws Exception
     {
         AppCapabilities capabilities =
            new AppCapabilities("deviceId", "AppId", "AppVersion");
         capabilities.reuseSession(true);
         driver = new AppDriver(capabilities);
         driver.waitUntilReady();
     }

4. Add the code which will clean up your session:

   .. code-block:: java
 
     @After
     public void tearDown() {
       driver.quit();
     }

5. Add tests:

   .. code-block:: java
 
     @Test
     public void FirstTest() throws IOException {

     }