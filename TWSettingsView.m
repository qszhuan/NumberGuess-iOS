//
// Created by zhuanqingshan on 13-1-29.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TWSettingsView.h"


@implementation TWSettingsView {
    UIButton *levelButton;
    UIButton *timesButton;
}

- (id)init {
    self = [super init];
    if (self) {

        CGRect screenRect = [[UIScreen mainScreen] bounds];
        CGPoint centerPoint = CGPointMake(screenRect.size.width / 2, screenRect.size.height / 2);
        int btnWith = 100;
        int btnHeight = 50;
        CGPoint levelButtonPos = CGPointMake(centerPoint.x - btnWith / 2, centerPoint.y - btnHeight-100);
        CGPoint sizeButtonPos = CGPointMake(centerPoint.x - btnWith / 2, centerPoint.y + btnHeight-100);

        levelButton = [self AddButtonWithTitle:@"Level" withFrame:CGRectMake(levelButtonPos.x, levelButtonPos.y, btnWith, btnHeight)];
        timesButton = [self AddButtonWithTitle:@"Times" withFrame:CGRectMake(sizeButtonPos.x, sizeButtonPos.y, btnWith, btnHeight)];

        [levelButton addTarget:self action:@selector(levelButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [timesButton addTarget:self action:@selector(timesButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    }

    return self;
}

- (void)timesButtonPressed {
    NSLog(@"Times button pressed.");
}

- (void)levelButtonPressed {
    NSLog(@"Level button pressed.");
}

- (UIButton *)AddButtonWithTitle:(NSString *)title withFrame:(CGRect)rect {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = rect;
    [button setTitle:title forState:UIControlStateNormal];
    [self addSubview:button];
    return button;
}


@end