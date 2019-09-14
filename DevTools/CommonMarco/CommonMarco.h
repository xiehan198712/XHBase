//
//  CommonMarco.h
//  AVKit_Study
//
//  Created by 谢涵 on 2018/11/6.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "NSString+dateString.h"

#define UMShareAppKey @"5ca1ca6f0cafb26534000b59"
//log日志

#ifdef DEBUG
#define LRString [NSString stringWithFormat:@"%s", __FILE__].lastPathComponent
#define LRLog(...) printf("%s: %s 第%d行: %s\n\n",[[NSString lr_stringDate] UTF8String], [LRString UTF8String] ,__LINE__, [[NSString stringWithFormat:__VA_ARGS__] UTF8String]);
#else
#define LRLog(...)
#endif

#define Token @"Token"

//判断字符串
#define NotNull(x)  (([NSString isVilid:x])?(x):(@""))
//判断是否为空

#define UnicodeURL(urlString) [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]
#define URLStr(str) [NSURL URLWithString:(str)]
#define ImageName(str) [UIImage imageNamed:(str)]



//版本,适配
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define ipone4S_5S_Width 320.0f
#define ipone6_Width 375.0f
#define iphone6P_Width 414.0f


#define IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
//判断iPHoneXr
#define IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
//判断iPhoneXs
#define IS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
//判断iPhoneXs Max
#define IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)




#define Is_X_Series (SCREEN_WIDTH >=375.0f && SCREEN_HEIGHT >=812.0f)

// 状态栏高度
#define STATUS_BAR_HEIGHT (Is_X_Series ? 44.f : 20.f)
// 导航栏高度
#define Nav_HEIGHT (Is_X_Series ? 88.f : 64.f)
// tabBar高度
#define TAB_BAR_HEIGHT (Is_X_Series ? (49.f+34.f) : 49.f)
// home indicator
#define HOME_INDICATOR_HEIGHT (Is_X_Series ? 34.f : 0.f)
/*底部安全区域远离高度*/
#define BottomSafeHeight (CGFloat)(Is_X_Series?(34.0):(0))

//color
//获得RGB颜色
#define RGBA(r, g, b, a)  [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r, g, b)      RGBA(r, g, b, 1.0f)

//自定义颜色
#define HZColor_blue RGB(0,122,255)
#define HZColor_disableGray RGB(190,190,190)


//首页cell高度
#define HomeCellHeaderHeight 50
#define HomeCellCustomViewHeight 240
#define HomeCellHeight HomeCellHeaderHeight+HomeCellCustomViewHeight

//NSUserDefult
#define USER_D [NSUserDefaults standardUserDefaults]

/**
 * 按钮字体
 */
//Heiti SC
//#define MyFont(fontsize) [UIFont fontWithName:@"FZLanTingHei-EL-GBK" size:(fontsize)]
#define MyFont(fontsize) [UIFont fontWithName:@"Heiti SC" size:(fontsize)]
/**
 * 按钮字体
 */
#define Font_Text(fontsize) [UIFont systemFontOfSize:(fontsize)]
//[UIFont fontWithName:@"PingFangSC-Regular" size:17]
#define Font_TextLight(fontsize) [UIFont fontWithName:@"PingFangSC-Regular" size:(fontsize)]
#define Font_Text_bold(fontsize) [UIFont boldSystemFontOfSize:(fontsize)]



//IOS系统名称 e.g. @"iPhone OS"
#define SystemName [[UIDevice currentDevice] systemName]
//IOS系统版本号 e.g. 7.0.3
#define SystemVersion [[[UIDevice currentDevice] systemVersion] doubleValue]
//获取当前语言
#define SystemLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])


//App名称
#define AppName [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]
//App版本号 e.g. 1.1.0
#define AppVersion [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]
//App build版本号 e.g. 1.1.0
#define AppBuildVersion [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]


//字符串是否为空
#define kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )
//数组是否为空
#define kArrayIsEmpty(array) (array == nil || [array isKindOfClass:[NSNull class]] || array.count == 0)
//字典是否为空
#define kDictIsEmpty(dic) (dic == nil || [dic isKindOfClass:[NSNull class]] || dic.allKeys == 0)
//是否是空对象
#define kObjectIsEmpty(_object) (_object == nil \
|| [_object isKindOfClass:[NSNull class]] \
|| ([_object respondsToSelector:@selector(length)] && [(NSData *)_object length] == 0) \
|| ([_object respondsToSelector:@selector(count)] && [(NSArray *)_object count] == 0))



//一些缩写
#define kApplication        [UIApplication sharedApplication]
#define kKeyWindow          [UIApplication sharedApplication].keyWindow
#define kAppDelegate        [UIApplication sharedApplication].delegate
#define kUserDefaults       [NSUserDefaults standardUserDefaults]
#define kNotificationCenter [NSNotificationCenter defaultCenter]

//APP版本号
#define kAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
//系统版本号
#define kSystemVersion [[UIDevice currentDevice] systemVersion]
//获取当前语言
#define kCurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])


//获取沙盒Document路径
#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
//获取沙盒temp路径
#define kTempPath NSTemporaryDirectory()
//获取沙盒Cache路径
#define kCachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]


//弱引用/强引用
#define kWeakSelf(type)   __weak typeof(type) weak##type = type;
#define kStrongSelf(type) __strong typeof(type) type = weak##type;

//由角度转换弧度
#define kDegreesToRadian(x)      (M_PI * (x) / 180.0)
//由弧度转换角度
#define kRadianToDegrees(radian) (radian * 180.0) / (M_PI)

