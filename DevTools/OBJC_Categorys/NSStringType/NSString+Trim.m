//
//  NSString+Trim.m
//  AVKit_Study
//
//  Created by 谢涵 on 2018/11/6.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "NSString+Trim.h"

@implementation NSString (Trim)
- (NSString *)trim
{
    //IOS 字符串中去除特殊符号 stringByTrimmingCharactersInSet 应该用于账号登录等
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(BOOL)isVilid:(NSString *)str
{
    return str && [str isKindOfClass:[NSString class]] && [[str trim] length] > 0;
}

- (NSString *)trimAllWhiteSpace
{
    return [self stringByReplacingOccurrencesOfString:@" " withString:@""];
}
@end
