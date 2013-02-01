//
// Created by zhuanqingshan on 13-1-31.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TWLevelSettingView.h"


@implementation TWLevelSettingView {
    UIPickerView * picker;

}
- (id)initWithFrame:(CGRect)frame {
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

@end