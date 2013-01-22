//
//  TWViewController.m
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-14.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import "TWViewController.h"
#import "TWNumberGuess.h"
#import "StringUtils.h"

@interface TWViewController ()

@end

NSString *TRY_AGAIN = @"Try Again";

@implementation TWViewController{
    TWNumberGuess *guesser;
    int failedCount;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        TWNumberGenerator* generator = [[TWRandomNumberGenerator alloc]init];
        guesser = [[TWNumberGuess alloc]initWithGenerator:generator];
        failedCount = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self disableGuessButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guess:(id)sender {
    if (self.btnText.currentTitle == TRY_AGAIN){
        [self tryAgain];
        return;
    }
    NSString* guessNumber = self.input.text;
    NSMutableArray* guess = [[NSMutableArray alloc] initWithCapacity:4];

    for (int i = 0; i < guessNumber.length; i++) {
        [guess addObject:[NSString stringWithFormat:@"%c", [guessNumber characterAtIndex:i]]];
    }

    NSString* result = [guesser guess:guess];
    self.result.text = result;
    [self updateStateWithResult:result];
}

- (void)updateStateWithResult:(NSString *)result {
    if (result == FAILED || result == @"4A0B"){
        [self.btnText setTitle:TRY_AGAIN forState:UIControlStateNormal];
    }
}

- (void)tryAgain {
    self.result.text = @"Result";
    [self.input setText:@""];
    [self.btnText setTitle:@"Guess" forState:UIControlStateNormal];
    [self disableGuessButton];
    [guesser reset];
    return;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)inputChanged:(id)sender {
    NSString *inputString = self.input.text;
    BOOL isNumericString = [StringUtils isNumericString:inputString];
    BOOL isStringWithoutRepetion = [StringUtils isStringWithoutRepetion:inputString];
    if(inputString.length == 4 && isNumericString && isStringWithoutRepetion)  {
        [self enableGuessButton];
    } else{
        [self disableGuessButton];
    }
}

- (void)enableGuessButton {
    self.btnText.enabled = YES;
    [self.btnText setTitleColor:[self.btnText titleColorForState:UIControlStateNormal] forState:UIControlStateNormal];
}

- (void)disableGuessButton {
    self.btnText.enabled = NO;
    [self.btnText setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
}
@end
