//
//  HaizuApi.h
//  HaizuRent
//
//  Created by 谢涵 on 2018/11/22.
//  Copyright © 2018 谢涵. All rights reserved.
//

#ifndef HaizuApi_h
#define HaizuApi_h

/******************协议Url***********************/

//关于还租
#define AboutHaizu_URL @"http://haizuerp.com/about-haizu.html"
//免赔服务保障
#define FranchiseServices_URL @"http://haizuerp.com/franchise-services.html"
//外观碎屏保障金协议
#define brokenScreenRisks_URL @"http://haizuerp.com/broken-screen-risks.html"
//注册协议
#define RegProtocol_URL @"http://haizuerp.com/registration-protocol.html"
//隐私协议
#define PrivacyProtocol_URL @"http://haizuerp.com/privacy-policy.html"

#define HuanJiNotice_URL @"http://haizuerp.com/haizu/personal/returnNotice"

/********************强制更新*********************/

//强制更新
//测试环境
//#define ForceUpdateBaseUrl @"https://test.haizuerp.com/"
//正式环境

#define ForceUpdateBaseUrl @"http://haizuerp.com/"
/******************APP接口***********************/

//测试环境
//#define BaseUrl @"http://test.haizuerp.com/haizu/"

//正式环境
#define BaseUrl @"http://haizuerp.com/haizu/"

//董鹏测试环境
//#define BaseUrl @"http://192.168.110.77:8081/"



//192.168.240.1
//董鹏测试环境2
//#define BaseUrl @"http://192.168.110.77:8081/"

//田静文测试环境
//#define BaseUrl @"http://192.168.110.91:8081/"


/*****************************************/

//账号密码登录接口
#define PassWordLogin @"/passwordLogin"

//登陆注册验证码发送接口
#define sendLoginSms @"/sendLoginSms"

//验证码登陆接口
#define verificationCodeLogin @"/verificationCodeLogin"

//个人中心接口
#define iosPersonalCenter @"/iosPersonalCenter"


#endif /* HaizuApi_h */
