//
//  NSArray+Null.m
//  HaizuRent
//
//  Created by 谢涵 on 2018/12/21.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import "NSArray+Null.h"
#import "NSDictionary+Null.h"

@implementation NSArray (Null)
- (NSArray *)arrayByReplacingNulls  {

    NSMutableArray *replaced = [self mutableCopy];
    
    
    
    const id nul = [NSNull null];
    
    
    
    for (int idx = 0; idx < [replaced count]; idx++) {
        
        
        
        id object = [replaced objectAtIndex:idx];
        
        
        
        if (object == nul) [replaced removeObjectAtIndex:idx];
        
        
        
        else if ([object isKindOfClass:[NSDictionary class]]) [replaced replaceObjectAtIndex:idx withObject:[object dictionaryByReplacingNulls]];
        
        
        
        else if ([object isKindOfClass:[NSArray class]]) [replaced replaceObjectAtIndex:idx withObject:[object arrayByReplacingNulls]];
        
        
        
    }
    
    
    
    return [replaced copy];
    
    
    
}

@end
