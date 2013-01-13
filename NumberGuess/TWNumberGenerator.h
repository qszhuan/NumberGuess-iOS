//
//  TWNumberGenerator.h
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-13.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWNumberGenerator : NSObject

- (NSArray*)generate;

@end

@interface TWFixNumberGenerator : TWNumberGenerator

@end

@interface TWRandomNumberGenerator : TWNumberGenerator
- (id)init;
- (NSArray*)shaffle:(int)times;
@end
