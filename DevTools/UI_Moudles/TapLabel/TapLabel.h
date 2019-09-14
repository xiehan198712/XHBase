//
//  TapLabel.h
//  lejuPro
//
//  Created by 谢涵 on 2017/6/23.
//  Copyright © 2017年 谢涵. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapLabel : UILabel
@property (nonatomic,copy) void (^tapBlock)(TapLabel *);
- (instancetype)initWithTapBlock:(void (^)(TapLabel *))tapBlock;
@end
