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
}

- (void)setUp
{
    [super setUp];
    TWFixNumberGenerator* fixNumberGenerator = [[TWFixNumberGenerator alloc] init];
    numberGuess = [[TWNumberGuess alloc] initWithGenerator:fixNumberGenerator];
}

- (void) testShouldReturn4A0BWhenALlCorrect{
    NSArray *guessNumber = @[@"1", @"2", @"3", @"4"];
    
    NSString *result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"4A0B", nil);
}

- (void) testShouldReturn2A2BWhenAllNumberCorrectAndTwoPositionCorrect{
    NSArray *guessNumber = @[@"1", @"2", @"4", @"3"];
    
    NSString *result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"2A2B", nil);
}

- (void) testShouldReturn0A0BWhenAllNumberInCorrect{
    NSArray *guessNumber = @[@"5", @"6", @"7", @"8"];
    
    NSString *result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"0A0B", nil);
}


- (void) testShouldReturnRandomNumberByShaffleSeed {
    TWRandomNumberGenerator *generator= [[TWRandomNumberGenerator alloc]init];
    NSMutableArray * seeds = [[NSMutableArray alloc] initWithCapacity:1];
    seeds[0] = @[@1,@2];
    
    NSArray* result = [generator shuffleWithSeeds:seeds];
    NSArray *expectArray = @[@"1", @"3", @"2", @"4"];
    STAssertEqualObjects(result, expectArray, nil);
}

- (void) testRandomGenerator {
    TWRandomNumberGenerator *generator= [[TWRandomNumberGenerator alloc]init];

    NSArray* result = [generator generate];
//    NSArray *expectArray = @[@"1", @"3", @"2", @"4"];
//    STAssertEqualObjects(result, expectArray, nil);
}

- (void) testShouldReturnFailedAfterSixTimesWrong{
    NSArray *guessNumber = @[@"5", @"6", @"7", @"8"];

    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    NSString *result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"0A0B", nil);
    result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"Failed", nil);
    result= [numberGuess guess:@[@"1", @"3", @"2", @"4"]];
    STAssertEqualObjects(result, @"Failed", nil);
}
- (void) testShouldBeAbleToGuess6TimesAfterReset{
    NSArray *guessNumber = @[@"5", @"6", @"7", @"8"];

    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    [numberGuess guess:guessNumber];
    NSString *result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"0A0B", nil);
    result= [numberGuess guess:guessNumber];
    STAssertEqualObjects(result, @"Failed", nil);
    [numberGuess reset];
    result= [numberGuess guess:@[@"1", @"3", @"2", @"4"]];
    STAssertEqualObjects(result, @"2A2B", nil);
}


@end
