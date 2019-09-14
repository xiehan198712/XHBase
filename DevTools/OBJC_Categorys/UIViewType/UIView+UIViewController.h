//
//  UIView+UIViewController.h
//  Installment
//
//  Created by Apple on 15/11/20.
//  Copyright © 2015年 熊彬. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIView (UIViewController)


/**
 获得当前uiview所在的控制器

 @return UIViewController
 */
- (UIViewController *)viewController;

/**
 *  获取当前navigationController
 *
 *  @return UINavigationController
 */
- (UINavigationController *)navigationController;
/**
 *  获取当前tabBarController
 *
 *  @return UITabBarController
 */
- (UITabBarController *)tabBarController;
@end
NS_ASSUME_NONNULL_END
