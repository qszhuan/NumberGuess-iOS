//
//  NumberGuessTests.m
//  NumberGuessTests
//
//

#import "NumberGuessTests.h"
#import "TWNumberGuess.h"

@implementation NumberGuessTests
{
    TWNumberGuess *numberGuess;
    NSArray *targetNumber;
}

- (void)setUp
{
    [super setUp];
    targetNumber = @[@"1", @"2", @"3", @"4"];
    numberGuess = [[TWNumberGuess alloc] initWithTarget:targetNumber];
}

- (void) testShouldReturn4A0BWhenALlCorrect{
    NSArray *guessNumber = @[@"1", @"2", @"3", @"4"];
    
    NSString *result=[numberGuess compareTargetNumbersWithGuessNumber:guessNumber];
    STAssertEqualObjects(result, @"4A0B", nil);
}

- (void) testShouldReturn2A2BWhenAllNumberCorrectAndTwoPositionCorrect{
    NSArray *guessNumber = @[@"1", @"2", @"4", @"3"];
    
    NSString *result=[numberGuess compareTargetNumbersWithGuessNumber:guessNumber];
    STAssertEqualObjects(result, @"2A2B", nil);
}

- (void) testShouldReturn0A0BWhenAllNumberInCorrect{
    NSArray *guessNumber = @[@"5", @"6", @"7", @"8"];
    
    NSString *result=[numberGuess compareTargetNumbersWithGuessNumber:guessNumber];
    STAssertEqualObjects(result, @"0A0B", nil);
}

@end
