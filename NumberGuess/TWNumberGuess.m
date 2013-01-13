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

- (id)initWithGenerator:(TWNumberGenerator *)generator{
    self = [super init];
    if(self) {
        targetArray = (NSArray*)[generator generate];
    }
    return self;
}

- (NSString *)compareTargetNumbersWithGuessNumber:(NSArray *)guess{
    int numberOfA = 0;
    int numberOfB = 0;
    for (int i=0; i < targetArray.count; i++) {
        ([targetArray[i] isEqualToString: guess[i]] && ++numberOfA) ||
        ([targetArray containsObject:guess[i]] && ++numberOfB);
    }
    return [NSString stringWithFormat:@"%dA%dB", numberOfA, numberOfB];
}

@end
