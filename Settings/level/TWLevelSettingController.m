//
//  TWLevelSettingController.m
//  NumberGuess
//
//  Created by 颛 清山 on 01/31/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TWLevelSettingController.h"
#import "TWLevelSettingView.h"

@interface TWLevelSettingController ()

@end

@implementation TWLevelSettingController{
    TWLevelSettingView *levelSettingView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSArray *array=[[NSArray alloc] initWithObjects:@"哈哈",
                                                        @"two",
                                                        @"three",
                                                        @"four",
                                                        @"five",
                                                        nil];

        self.pickerViewData = array;
        levelSettingView = [[TWLevelSettingView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    }
    return self;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerViewData objectAtIndex: row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    id result = [self.pickerViewData objectAtIndex: row];
    NSLog(@"result: %@",result);
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerViewData count];
}


- (void)loadView {
    self.view = levelSettingView;
    [self.view setBackgroundColor:[UIColor underPageBackgroundColor]];
    [levelSettingView setDelegate:self];
}

@end
