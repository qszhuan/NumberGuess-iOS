//
//  TWViewController.h
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-14.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *result;
@property (strong, nonatomic) IBOutlet UITextField *input;
- (IBAction)guess:(id)sender;
@property (retain) IBOutlet UIButton *btnGuess;
@property (weak, nonatomic) IBOutlet UILabel *hint;
- (IBAction)inputChanged:(id)sender;
@end
