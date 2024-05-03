//
//  MyDocument.h
//  MyImageApp2
//
//  Created by Conan Heiselt on 5/2/24.
//

#import <Cocoa/Cocoa.h>
  
@interface MyDocument : NSDocument
  
@property (nonatomic, strong) NSImage *image;
@property (nonatomic, strong) IBOutlet NSImageView *mainImageView;
@property (nonatomic, strong) IBOutlet NSWindow *mainWindow;
- (void)loadImage;
  
@end  
