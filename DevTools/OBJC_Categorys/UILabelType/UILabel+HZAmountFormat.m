//
//  UILabel+HZAmountFormat.m
//  HaizuRent
//
//  Created by 谢涵 on 2018/12/7.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "UILabel+HZAmountFormat.h"
#import "NSString+PureInt.h"

@implementation UILabel (HZAmountFormat)


+ (void)amountFormat:(id)instance text:(NSString *)text
{
    NSRange PointRange = [text rangeOfString:@"."];
    NSRange targetRange = NSMakeRange(PointRange.location + 1, 2);
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:text];
    [attStr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"PingFangSC-Regular" size:12.0] range:targetRange];
    UILabel *targetLabel = instance;
    targetLabel.attributedText = attStr;
}

+ (void)load
{
    [UILabel aspect_hookSelector:@selector(setText:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> info, NSString *text){
        //如果字符串包含'.'的子字符串
        if([text rangeOfString:@"."].location != NSNotFound){
            NSString *targetStr = [[text componentsSeparatedByString:@"."] lastObject];
            //小数点后面可能又有数字又有汉字,把汉字剔除掉
            if(targetStr.length == 2 && [targetStr isPureInt]){
                [self amountFormat:info.instance text:text];
            }
            //这种情况就是可能前面有两位是数字但后面又有汉字
            if(targetStr.length > 2){
                NSString *subTargetStr = [targetStr substringToIndex:2];
                //如果前两位是数字
                if([subTargetStr isPureInt]){
                    [self amountFormat:info.instance text:text];
                }
            }
        }
    } error:nil];
}




@end
