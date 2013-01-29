//
// Created by zhuanqingshan on 13-1-29.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TWSettingsView.h"


@implementation TWSettingsView {
    UIButton * levelButton;
    UIButton * timesButton;
}

- (id)init {
    self = [super init];
    if (self) {
        levelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        levelButton.frame = CGRectMake(110, 40, 100, 30);
        [self addSubview:levelButton];
        
        timesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        timesButton.frame = CGRectMake(110, 140, 100, 30);
        [self addSubview:timesButton];
    }


    return self;
}

@end