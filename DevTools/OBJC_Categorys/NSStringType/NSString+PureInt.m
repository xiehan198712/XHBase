//
//  NSString+PureInt.m
//  HaizuRent
//
//  Created by 谢涵 on 2018/12/13.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "NSString+PureInt.h"

@implementation NSString (PureInt)
//整型判断
- (BOOL)isPureInt{
    
    NSScanner* scan = [NSScanner scannerWithString:self];
    
    int val;
    
    return [scan scanInt:&val] && [scan isAtEnd];
}
@end
