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
        picker = [[UIPickerView alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        [picker setBackgroundColor:[UIColor whiteColor]];
        [picker setDelegate:_delegate];
        [picker setDataSource:_delegate ];
        [picker setShowsSelectionIndicator:YES];
        [self addSubview:picker];
    }
    return self;
}


@end