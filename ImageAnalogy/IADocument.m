//
//  IADocument.m
//  ImageAnalogy
//
//  Created by AquarHEAD L. on 6/12/13.
//  Copyright (c) 2013 Team.TeaWhen. All rights reserved.
//

#import "IADocument.h"

@interface IADocument()

@property (weak) IBOutlet NSImageView *imgwella;
@property (weak) IBOutlet NSImageView *imgwella2;

@end

@implementation IADocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (void)awakeFromNib {

}

- (NSString *)windowNibName
{
    return @"IADocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

- (IBAction)loadA:(id)sender {
    NSOpenPanel *op = [NSOpenPanel openPanel];
    [op setAllowsMultipleSelection:NO];
    [op setAllowedFileTypes:@[@"jpg", @"png", @"bmp"]];
    [op setCanChooseFiles:YES];
    
    if ([op runModal] == NSOKButton) {
        NSArray *files = [op URLs];
        NSImage *imga = [[NSImage alloc] initWithContentsOfURL:files[0]];
        self.imgwella.image = imga;
    }
    
}


@end
