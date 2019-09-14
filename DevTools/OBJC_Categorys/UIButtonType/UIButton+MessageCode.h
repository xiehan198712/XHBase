//
//  UIButton+MessageCode.h
//  XHBase
//
//  Created by 谢涵 on 2019/9/10.
//  Copyright © 2019 Hans. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define BtnTitleColor [UIColor blueColor]
#define BtnDisableBackGroundColor [UIColor grayColor]
@interface UIButton (MessageCode)
/**
 *  倒计时按钮
 *
 *  @param timeLine 倒计时总时间
 *  @param title    还没倒计时的title
 *  @param subTitle 倒计时中的子名字，如时、分
 *  @param mColor   还没倒计时的颜色
 *  @param color    倒计时中的颜色
 */
- (void)startWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainColor:(UIColor *)mColor countColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
