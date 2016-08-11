#import "AppDelegate.h"
#import "SSYVectorImages.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSImageView *imageView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    CGFloat wength = self.imageView.frame.size.width ;
    [self.imageView setImage:[SSYVectorImages imageStyle:SSYVectorImageStyleHelp
                                                      wength:wength
                                                       color:[NSColor blackColor]
                                               rotateDegrees:0.0
                                                       inset:0.0]] ;
}

@end
