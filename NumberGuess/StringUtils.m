//
// Created by zhuanqingshan on 13-1-23.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "StringUtils.h"


@implementation StringUtils {

}

+ (BOOL)isStringWithoutRepetition:(NSString *)string {
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:@"(\\w)\\w*\\1" options:0 error:nil];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:string options:0 range:NSMakeRange(0, [string length])];
    return numberOfMatches <= 0;
}

+ (BOOL)isNumericString:(NSString *)inputString {
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:inputString];
    NSCharacterSet *alphaNums = [NSCharacterSet decimalDigitCharacterSet];
    return [alphaNums isSupersetOfSet:characterSet];
}

@end