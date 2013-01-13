//
//  TWNumberGenerator.m
//  NumberGuess
//
//  Created by 颛 清山 on 13-1-13.
//  Copyright (c) 2013年 颛 清山. All rights reserved.
//

#import "TWNumberGenerator.h"
#import "stdlib.h"

int UPPER_BOUND = 9;

@implementation TWNumberGenerator

- (NSArray*)generate{
    return nil;
}

@end


@implementation TWFixNumberGenerator

- (NSArray*)generate{
    return @[@"1", @"2", @"3", @"4"];
}

@end

@implementation TWRandomNumberGenerator{
    NSMutableArray* numberList;
}

- init{
    self = [super init];
    if(self){
        numberList = [@[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9"] mutableCopy];
    }
    return self;
}

- (NSArray*)generate{
    return [self shaffle :100];
}

- (NSArray*)shaffle :(int)times{
    for (int i = 0; i < times; i++) {
        int a = arc4random_uniform(UPPER_BOUND);
        int b = arc4random_uniform(UPPER_BOUND);
        
        [numberList exchangeObjectAtIndex:a withObjectAtIndex:b];
        for (id each  in numberList) {
            NSLog(@"%u %@", i, each);
        }
    }
    return [numberList subarrayWithRange:NSMakeRange(0, 4)];
}

@end
