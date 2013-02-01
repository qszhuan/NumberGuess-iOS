//
// Created by zhuanqingshan on 13-1-31.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TWLevelSettingView.h"


@implementation TWLevelSettingView {
    UIButton * returnButton;
}
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        returnButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        returnButton.frame = CGRectMake(10, 10, 100, 50);
        [returnButton setTitle:@"Back" forState:UIControlStateNormal];
        [self addSubview:returnButton];
        [returnButton addTarget:self action: @selector(backToSettingView) forControlEvents:UIControlEventTouchUpInside];
}
    return self;
}

- (void)backToSettingView {
    NSLog(@"Return button pressed.");
    [self removeFromSuperview];
}

@end