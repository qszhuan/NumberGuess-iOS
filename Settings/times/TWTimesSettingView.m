//
//  TWTimesSettingView.m
//  NumberGuess
//
//  Created by 颛 清山 on 02/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TWTimesSettingView.h"

@implementation TWTimesSettingView  {
    UIPickerView * picker;

}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        picker = [[UIPickerView alloc] init];
        [picker setBackgroundColor:[UIColor whiteColor]];
        [picker setShowsSelectionIndicator:YES];
        [picker sizeToFit];
        [self addSubview:picker];

    }
    return self;
}

- (void)setPickerDelegate:delegate {
    [picker setDelegate:delegate];
    [picker setDataSource:delegate];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
