
//
//  TapLabel.m
//  lejuPro
//
//  Created by 谢涵 on 2017/6/23.
//  Copyright © 2017年 谢涵. All rights reserved.
//

#import "TapLabel.h"

@implementation TapLabel

- (instancetype)initWithTapBlock:(void (^)(TapLabel *))tapBlock
{
    if(self = [super init]){
        
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
        [self addGestureRecognizer:tap];
        _tapBlock = [tapBlock copy];
    }
    return self;
}

- (void)tapClick
{
   if(self.tapBlock)
   {
       self.tapBlock(self);
   }
}
@end
