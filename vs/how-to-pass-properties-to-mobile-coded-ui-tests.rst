How To: Pass Properties to Mobile Coded UI Tests
================================================

Your Mobile Coded UI Tests may depend on certain properties, or settings, that change between environments.
For exampe, you test may open a web site that is different between the test and staging environment.

You can save these settings as properties in the Mobile Test Settings File.

Add a property to the Mobile Test Settings File
-----------------------------------------------

To add a property to the Mobile Test Settings file, open the file with an XML editor.
Properties are stored in the ``settings/properties/`` node, where you can add a ``<property name='name' value='value'/>``
element for each test parameter.

For example, if you want to add a property ``url`` with value ``http://quamotion.mobi``, you would add the following
section to your mobile test settings file:

.. code-block:: xml

    <settings>
        <properties>
            <property name='url' value='http://quamotion.mobi'/>
        </property>
    </settings>

Use Test Properties in your Mobile Coded UI Tests
-------------------------------------------------

You can use test properties in your tests. When your test starts, the properties are automatically added to the
``TestContext.Properties`` property. For example, to retrieve the URL that you have added previously, you could
use the following code:

``var url = (string)this.TestContext.Properties["url"];``

Properties are always stored as a string value.