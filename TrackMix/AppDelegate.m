//
//  AppDelegate.m
//  TrackMix
//
//  Created by Olivier Anno on 25/08/13.
//  Copyright (c) 2013 Olivier Anno. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate
@synthesize textField = _textField;
@synthesize slider = _slider;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{   // Insert code here to initialize your application
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumefrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
