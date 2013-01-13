//
//  TWNumberGuess.h
//  NumberGuess
//
//

#import <Foundation/Foundation.h>
#import "TWNumberGenerator.h"

@interface TWNumberGuess : NSObject

- (NSString *)compareTargetNumbersWithGuessNumber:(NSArray *)guess;
- (id)initWithTarget:(NSArray *)target;
- (id)initWithGenerator:(TWNumberGenerator *)generator;

@end
