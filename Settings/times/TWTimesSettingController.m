//
//  TWTimesSettingController.m
//  NumberGuess
//
//  Created by 颛 清山 on 02/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TWTimesSettingController.h"
#import "TWTimesSettingView.h"

@interface TWTimesSettingController ()

@end

@implementation TWTimesSettingController  {
    TWTimesSettingView* timesSettingView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSArray *array= [[NSArray alloc] initWithObjects:@"4", @"5", @"6", @"7", @"8", nil];
        self.pickerViewData = array;

        timesSettingView = [[TWTimesSettingView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
        [timesSettingView setPickerDelegate:self];
    }
    return self;
}

- (void)loadView {
    self.view = timesSettingView;
    [self.view setBackgroundColor:[UIColor underPageBackgroundColor]];

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

@end
