//
//  TWNumberGuess.m
//  NumberGuess
//
//

#import "TWNumberGuess.h"

@implementation TWNumberGuess {
    NSArray *targetArray;
    int failedCount;
    TWNumberGenerator *numberGenerator;
}

- (id)initWithGenerator:(TWNumberGenerator *)generator{
    self = [super init];
    numberGenerator = [generator retain];
    if(self) {
        [self reset];
    }
    return self;
}

- (NSString *)guess:(NSArray *)guess{
    if(failedCount == 6){
        return FAILED;
    }
    NSArray * guessNumbers = [guess copy];

    int numberOfA = 0;
    int numberOfB = 0;
    for (int i=0; i < targetArray.count; i++) {
        ([targetArray[i] isEqualToString: guessNumbers[i]] && ++numberOfA) ||
        ([targetArray containsObject:guessNumbers[i]] && ++numberOfB);
    }
    [guessNumbers autorelease];
    if (numberOfA != 4) {
        if (++failedCount == 6){
            return FAILED;
        }
    }

    return [NSString stringWithFormat:@"%dA%dB", numberOfA, numberOfB];
}

- (void)reset {
    failedCount = 0;
    if (targetArray != nil){
        [targetArray release];
        targetArray = nil;
    }
    targetArray = [[numberGenerator generate] retain];
}

- (void)dealloc {
    [numberGenerator release];
    numberGenerator = nil;
    [super dealloc];
}

@end
