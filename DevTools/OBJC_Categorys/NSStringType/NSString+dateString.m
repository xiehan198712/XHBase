//
//  NSString+dateString.m
//  lejuPro
//
//  Created by 谢涵 on 2017/2/8.
//  Copyright © 2017年 谢涵. All rights reserved.
//

#import "NSString+dateString.h"

@implementation NSString (dateString)
+ (NSString *)lr_stringDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    return dateString;
}
@end
