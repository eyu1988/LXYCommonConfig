//
//  NSObject+LXYSwizzle.h
//  LXYNSObjectCategory
//
//  Created by Lucas on 2018/11/12.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LXYSwizzle)

/**
 实例方法交换
 */
+ (void)swizzleInstanceSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector;
/**
 类方法交换
 */
+ (void)swizzleClassSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector;

@end

NS_ASSUME_NONNULL_END
