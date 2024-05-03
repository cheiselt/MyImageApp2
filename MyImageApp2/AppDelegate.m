//
//  AppDelegate.m
//  MyImageApp2
//
//  Created by Conan Heiselt on 5/2/24.
//

#import "AppDelegate.h"
#import "MyDocument.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
      
    // Create a new NSDocument instance
    MyDocument *document = [[MyDocument alloc] init];
      
    // Open the document
    [document makeWindowControllers];
    [document showWindows];
      
    // Load the image file
   [document loadImage];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
   // Insert code here to tear down your application
}

- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
   return YES;
}

@end
