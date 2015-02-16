//
//  AppDelegate.h
//  TrackMix
//
//  Created by Olivier Anno on 25/08/13.
//  Copyright (c) 2013 Olivier Anno. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Track;
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextFieldCell *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumefrom:(id)sender;
- (void)updateUserInterface;

@end
