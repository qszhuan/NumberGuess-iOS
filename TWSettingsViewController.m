//
//  TWSettingsViewController.m
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-29.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import "TWSettingsViewController.h"
#import "TWSettingsView.h"

@interface TWSettingsViewController ()
@end

@implementation TWSettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView {
    self.view = ([[TWSettingsView alloc] init]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
