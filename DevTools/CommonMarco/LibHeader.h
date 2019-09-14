//
//  LibHeader.h
//  AVKit_Study
//
//  Created by 谢涵 on 2018/11/6.
//  Copyright © 2018 谢涵. All rights reserved.
//

#ifndef LibHeader_h
#define LibHeader_h

//三方库
#import <UIImageView+WebCache.h>
#import <UIButton+WebCache.h>
#import <Masonry.h>
#import <AFNetworking.h>
#import <ReactiveObjC.h>
#import <MJExtension.h>
#import <IQKeyboardManager.h>
#import <CYLTabBarController.h>
#import <Aspects.h>
//#import <JKUIKit.h>
#import "TapLabel.h"
#import <SVProgressHUD.h>
#import <MBProgressHUD.h>
#import <FFToast.h>
#import <WXApi.h>

/*
 Masonry使用技巧:
 定义以下两个宏,在使用Masonry框架时就不需要加mas_前缀了
 (定义宏一定要在引入Masonry.h文件之前).
 */
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#endif /* LibHeader_h */
