//
//  NSObject+LXYSwizzle.m
//  LXYNSObjectCategory
//
//  Created by Lucas on 2018/11/12.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "NSObject+LXYSwizzle.h"
#import <objc/runtime.h>

@implementation NSObject (LXYSwizzle)

+ (void)swizzleInstanceSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector {
    
    Class class = [self class];
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

+ (void)swizzleClassSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector {
    
    Class class = object_getClass((id)self);
    
    Method originalMethod = class_getClassMethod(class, originalSelector);
    Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
    
    BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
