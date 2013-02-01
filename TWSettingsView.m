//
// Created by zhuanqingshan on 13-1-29.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TWSettingsView.h"
#import "SettingDelegate.h"


@implementation TWSettingsView {
    UIButton *levelButton;
    UIButton *timesButton;

    id <SettingDelegate> delegate;
}
@synthesize delegate = _delegate;


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        CGRect screenRect = [[UIScreen mainScreen] bounds];
        int btnHeight = 50;
        levelButton = [self AddButtonWithTitle:@"Level" withFrame:CGRectMake(0, 0, screenRect.size.width, btnHeight)];
        timesButton = [self AddButtonWithTitle:@"Times" withFrame:CGRectMake(0, btnHeight, screenRect.size.width, btnHeight)];
        [levelButton addTarget:delegate action:@selector(levelButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [timesButton addTarget:delegate action:@selector(timesButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    }

    return self;
}


- (UIButton *)AddButtonWithTitle:(NSString *)title withFrame:(CGRect)rect {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = rect;
    [button setTitle:title forState:UIControlStateNormal];
    [self addSubview:button];
    return button;
}


@end