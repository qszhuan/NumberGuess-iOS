//
//  TWNumberGuess.h
//  NumberGuess
//
//

#import <Foundation/Foundation.h>
#import "TWNumberGenerator.h"

static NSString *const FAILED = @"Failed";

@interface TWNumberGuess : NSObject

- (NSString *)guess:(NSArray *)guess;

- (id)initWithGenerator:(TWNumberGenerator *)generator;

- (void)reset;
@end
