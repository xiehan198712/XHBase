//
//  NSUserDefaults+reset.h
//  XHBase
//
//  Created by 谢涵 on 2019/9/11.
//  Copyright © 2019 Hans. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (Reset)
//清空所有存储
+ (void)resetDefaults;
+ (void)resetDefaultsByPersistentDomain;
@end

NS_ASSUME_NONNULL_END
