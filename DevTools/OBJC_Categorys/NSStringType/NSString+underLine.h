//
//  NSString+underLine.h
//  A01-QQ聊天
//
//  Created by Steve Xiaohu Zhao on 14-11-29.
//  Copyright (c) 2014年 Steve Xiaohu Zhao. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface NSString (underLine)


/**
 *  给我一个label，让它的文字底部对应的range划线
 */
+ (void)stringToBeUnderlineWithRange:(NSRange)range label:(UILabel *)label lineColor:(UIColor *)color;

/**
 *  给我一个button，让它的文字底部对应的range划线
 */
+ (void)stringToBeUnderlineWithRange:(NSRange)range button:(UIButton *)btn lineColor:(UIColor *)color;

/**
 *  给我一个label，让它的文字对应的range部分变对应颜色
 */
+ (void)stringToBeDifferentColorWithRange:(NSRange)range label:(UILabel *)label color:(UIColor *)color;
+ (void)stringToBeDifferentColorWithRange:(NSRange)range1 andOtherRange:(NSRange)range2 Label:(UILabel *)label color:(UIColor *)color;
/**
 *  给我一个button，让它的文字对应的range部分变对应颜色
 */
+ (void)stringToBeDifferentColorWithRange:(NSRange)range button:(UIButton *)btn color:(UIColor *)color;


+ (NSString*)stringOfPhoneNumHideMiddleString:(NSString*)string;

@end
