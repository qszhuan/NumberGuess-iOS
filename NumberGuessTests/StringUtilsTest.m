//
//  StringUtilsTest.m
//  NumberGuess
//
//  Created by 颛 清山 on 01/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "StringUtilsTest.h"
#import "StringUtils.h"

@implementation StringUtilsTest

- (void) testShouldBeTrueIfAllCharactersAreNumeric{
    STAssertEquals([StringUtils isNumericString:@"0123"], YES, nil);
    STAssertEquals([StringUtils isNumericString:@"abc"], NO, nil);
    STAssertEquals([StringUtils isNumericString:@"12ab3"], NO, nil);
}

- (void) testShouldBeTrueIfNoRepeatCharactersInString{
    STAssertEquals([StringUtils isStringWithoutRepetition:@"abc"], YES, nil);
    STAssertEquals([StringUtils isStringWithoutRepetition:@"abac"], NO, nil);
    STAssertEquals([StringUtils isStringWithoutRepetition:@"1231"], NO, nil);
    STAssertEquals([StringUtils isStringWithoutRepetition:@"123"], YES, nil);
}
@end
