//
//  UIControl+XhBtnClickDelay.m
//  ButtonCategory
//
//  Created by Chris on 16/8/3.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import "UIControl+XhBtnClickDelay.h"
#import <objc/runtime.h>

@interface UIControl ()

/** 是否忽略点击 */
@property(nonatomic)BOOL Xh_ignoreEvent;

@end


@implementation UIControl (XhBtnClickDelay)
-(void)Xh_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event{
    
    if (self.Xh_ignoreEvent) return;
    
    if (self.delay > 0) {
        self.Xh_ignoreEvent = YES;
        [self performSelector:@selector(setXh_ignoreEvent:) withObject:@(NO) afterDelay:self.delay];
    }
    [self Xh_sendAction:action to:target forEvent:event];
}

-(void)setXh_ignoreEvent:(BOOL)Xh_ignoreEvent{
    objc_setAssociatedObject(self, @selector(Xh_ignoreEvent), @(Xh_ignoreEvent), OBJC_ASSOCIATION_ASSIGN);
}

-(BOOL)Xh_ignoreEvent{
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}


-(void)setDelay:(NSTimeInterval)delay{
    objc_setAssociatedObject(self, @selector(delay), @(delay), OBJC_ASSOCIATION_ASSIGN);
}

-(NSTimeInterval)delay{
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
}


+(void)load{
    Method sys_Method = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    
    Method add_Method = class_getInstanceMethod(self, @selector(Xh_sendAction:to:forEvent:));
    
    method_exchangeImplementations(sys_Method, add_Method);
}

@end
