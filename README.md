SSYVectorImageTester

======

This project is for testing and demonstrating my SSYVectorImages class, a singleton which I use in my apps to create Retina-friendly vector black and white icons, as NSImage objects.  Another name for SSYVectorImages might be "Fun making icons with NSBezierPath".

Every now and then, I need to add support for a new icon style in SSYVectorImages.  I use this tester app to develop and debug it.

Note that the SSYVectorImages .h and .m files in this repo **may not be the latest version**.  The latest versions should be in my ClassesObjC repo.  Here is the [.h file](https://github.com/jerrykrinock/ClassesObjC/blob/master/SSYVectorImages.h) and the [.m file](https://github.com/jerrykrinock/ClassesObjC/blob/master/SSYVectorImages.m).

The demo creates on NSImage and displays it in a small window.  The image style and other attributes are hard-coded in -[AppDelegate applicationDidFinishLaunching].  Currently, it is coded to display what I think is a bug in macOS 10.12 Sierra.  If you build the product and run it in macOS 10.10-10.11 it will display a nice "?" as desired.  But in 10.12 you get 5 horizontal bars.  The workaround is SSYVectorImages.m lines 9-13.

UPDATE: Apple Bug 27813593 works as expected and is not a bug.  In earlier versions of macOS, in the System and Label fonts, the glyphs I was using had names, but in 10.12 they do not have names, and that is OK because glyph names are not required by the API contract.

The solution is to use CTFontGetGlyphsForCharacters(), of which I was unaware, instead of glyph names.

