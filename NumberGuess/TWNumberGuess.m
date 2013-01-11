//
//  TWNumberGuess.m
//  NumberGuess
//
//

#import "TWNumberGuess.h"

@implementation TWNumberGuess {
    NSArray *targetArray;
}

- (id)initWithTarget:(NSArray *)target {
    self = [super init];
    if (self) {
        targetArray = target;
    }
    return self;
}

- (NSString *)compareTargetNumbersWithGuessNumber:(NSArray *)guess{
    int a = 0;
    int b = 0;
    for (int i=0; i < targetArray.count; i++) {
        if (targetArray[i] == guess[i]) {
            a++;
        }else {
            for (int j=0; j<targetArray.count; j++) {
                if(targetArray[j] == guess[i]){
                    b++;
                }
            }
        }
    }
    return [NSString stringWithFormat:@"%dA%dB", a, b];
}

@end
