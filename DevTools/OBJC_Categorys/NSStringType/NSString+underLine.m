//
//  NSString+Extention.m
//  A01-QQ聊天
//
//  Created by Steve Xiaohu Zhao on 14-11-29.
//  Copyright (c) 2014年 Steve Xiaohu Zhao. All rights reserved.
//

#import "NSString+underLine.h"

@implementation NSString (underLine)

+ (void)stringToBeUnderlineWithRange:(NSRange)range button:(UIButton *)btn lineColor:(UIColor *)color
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:btn.titleLabel.text];
    [str addAttribute:NSUnderlineColorAttributeName value:color range:range];
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:range];
    [btn setAttributedTitle:str forState:UIControlStateNormal];
}

+ (void)stringToBeUnderlineWithRange:(NSRange)range label:(UILabel *)label lineColor:(UIColor *)color
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    [str addAttribute:NSUnderlineColorAttributeName value:color range:range];
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:range];
    label.attributedText = str;
}

+ (void)stringToBeDifferentColorWithRange:(NSRange)range label:(UILabel *)label color:(UIColor *)color
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    [label setAttributedText:str];
}

+ (void)stringToBeDifferentColorWithRange:(NSRange)range1 andOtherRange:(NSRange)range2 Label:(UILabel *)label color:(UIColor *)color
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:label.text];
    [str addAttribute:NSForegroundColorAttributeName value:color range:range1];
    [str addAttribute:NSForegroundColorAttributeName value:color range:range2];
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:5];
    [str addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, label.text.length)];
    
    [label setAttributedText:str];
}

+ (void)stringToBeDifferentColorWithRange:(NSRange)range button:(UIButton *)btn color:(UIColor *)color
{
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:btn.titleLabel.text];
    [str addAttribute:NSForegroundColorAttributeName value:color range:range];
    [btn setAttributedTitle:str forState:UIControlStateNormal];
}

+ (NSString*)stringOfPhoneNumHideMiddleString:(NSString *)string
{
    if (string.length == 11) {
        return [NSString stringWithFormat:@"%@****%@",[string substringToIndex:3],[string substringFromIndex:7]];
    } else if (string.length < 11 && string.length > 7) {
        return [NSString stringWithFormat:@"%@***%@",[string substringToIndex:3],[string substringFromIndex:7]];
    } else {
        return string;
    }
}

@end
