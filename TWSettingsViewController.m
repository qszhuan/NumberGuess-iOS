//
//  TWSettingsViewController.m
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-29.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import "TWSettingsViewController.h"
#import "TWSettingsView.h"
#import "TWLevelSettingController.h"

@implementation TWSettingsViewController  {
    TWSettingsView *settingsView;
    TWLevelSettingController* levelSettingController;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        settingsView = [[TWSettingsView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        [settingsView setDelegate:self];
        levelSettingController = [[TWLevelSettingController alloc] initWithNibName:@"TWLevelSettingController" bundle:nil];
    }
    return self;
}

- (void)loadView {
    self.view = settingsView;
    [self.view setBackgroundColor:[UIColor clearColor]];
}


- (void)timesButtonPressed {
    NSLog(@"Times button pressed.");
    [[self navigationController ]pushViewController:levelSettingController animated:YES];
}

- (void)levelButtonPressed {
    NSLog(@"Level button pressed.");
    [[self navigationController] pushViewController:levelSettingController animated:YES];
}

@end
