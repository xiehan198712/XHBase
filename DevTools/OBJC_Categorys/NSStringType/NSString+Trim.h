//
//  NSString+Trim.h
//  AVKit_Study
//
//  Created by 谢涵 on 2018/11/6.
//  Copyright © 2018 谢涵. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Trim)

- (NSString *)trim;

+(BOOL)isVilid:(NSString *)str;

- (NSString *)trimAllWhiteSpace;

@end
