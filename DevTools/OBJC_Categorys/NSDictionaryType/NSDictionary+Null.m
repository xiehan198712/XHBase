//
//  NSDictionary+Null.m
//  HaizuRent
//
//  Created by 谢涵 on 2018/12/21.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "NSDictionary+Null.h"
#import "NSArray+Null.h"

@implementation NSDictionary (Null)
- (NSDictionary *)dictionaryByReplacingNulls {
    
    const NSMutableDictionary *replaced = [self mutableCopy];
    
    const id nul = [NSNull null];

    for (NSString *key in self) {
    
        id object = [self objectForKey:key];
        
        
        
        if (object == nul) [replaced removeObjectForKey:key];
        
        
        
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced setObject:[object dictionaryByReplacingNulls] forKey:key];
        
        
        
        else if ([object isKindOfClass:[NSArray class]]) [replaced setObject:[object arrayByReplacingNulls] forKey:key];
    }
    return [NSDictionary dictionaryWithDictionary:[replaced copy]];
}
@end
