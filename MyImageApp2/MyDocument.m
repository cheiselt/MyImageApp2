//
//  MyDocument.m
//  MyImageApp2
//
//  Created by Conan Heiselt on 5/2/24.
//

#import "MyDocument.h"
  
@implementation MyDocument
  
@synthesize image;

- (void)loadImage {
   self.image = [NSImage imageNamed:@"example"];
}
  
- (NSString *)windowNibName {
    // Return the name of the main window nib file
    return @"MyDocument";
}
  
- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
    // Set the image view's image to the loaded image
   self.mainImageView.image = self.image;
   
   // Add the export button
   NSButton *exportButton = [[NSButton alloc] initWithFrame:NSMakeRect(10, 10, 80, 30)];
   [exportButton setTitle:@"Export"];
   [exportButton setBezelStyle:NSBezelStyleRounded];
   [exportButton setTarget:self];
   [exportButton setAction:@selector(exportButtonPressed)];
//   [aController.window.contentView addSubview:exportButton];
   [self.mainWindow.contentView addSubview:exportButton];
}

- (void)exportButtonPressed {
    NSLog(@"Export button pressed");
}
  
@end 
