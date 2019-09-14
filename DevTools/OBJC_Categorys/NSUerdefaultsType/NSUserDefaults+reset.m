//
//  NSUserDefaults+reset.m
//  XHBase
//
//  Created by 谢涵 on 2019/9/11.
//  Copyright © 2019 Hans. All rights reserved.
//

#import "NSUserDefaults+Reset.h"

@implementation NSUserDefaults (Reset)
//方法一
+ (void)resetDefaultsByPersistentDomain {
    
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
}
//方法二
+ (void)resetDefaults
{
    NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
    NSDictionary * dict = [defs dictionaryRepresentation];
    for (id key in dict)
    {
        [defs removeObjectForKey:key];
    }
    [defs synchronize];
}
@end
