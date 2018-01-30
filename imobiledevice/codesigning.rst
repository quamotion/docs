CodeSigning of iOS applications on Windows & Linux
==================================================

Quamotion provides a `codesign` command-line utility which allows you to code sign
iOS applications on PCs running Windows or Linux.

Prequisites
-----------

To sign iOS applications using the Quamotion `codesign` command-line utility, you need:

- A PC running Linux or Windows
- You have an iOS Developer Profile which allows you to sign iOS applications and run iOS applications
  signed with your developer certificate on your devices.

Using the Quamotion `codesign` utility
---------------------------------

To use the Quamotion `codesign` utility, run the following command:

```
codesign
 --ipa <ipa>
 --developerProfile <path to your developer profile>
 --developerProfilePassword <password for your developer profile>
 --license <path your Quamotion license file>
```

where `ipa` is iOS application bundle you want to sign, `developerProfile` is the path to the 
Developer Profile you want to use to sign your application, `developerProfilePassword` is the password
for your developer profile and `license` is the path to your Quamotion license file.

For more information about the Quamotion `codesign` command-line utility, contact us
at info@quamotion.mobi.
