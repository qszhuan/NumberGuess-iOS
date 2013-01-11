//
//  TWNumberGuess.h
//  NumberGuess
//
//

#import <Foundation/Foundation.h>

@interface TWNumberGuess : NSObject

- (NSString *)compareTargetNumbersWithGuessNumber:(NSArray *)guess;
- (id)initWithTarget:(NSArray *)target;

@end
