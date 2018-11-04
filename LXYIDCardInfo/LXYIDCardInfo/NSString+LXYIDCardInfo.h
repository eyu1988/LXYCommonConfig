//
//  NSString+LXYIDCardInfo.h
//  LXYIDCardInfo
//
//  Created by Lucas on 2018/11/4.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LXYIDCardInfo)

/**
 @brief 通过当前字符串获取身份证上的生日信息
 
 @intention 身份证号码包含此信息

 @return 生日字符串 "xxxx-xx-xx"
 */
- (NSString *)lxy_getBirthDay;

/**
 @brief 通过当前字符串获取身份证上的性别信息
 
 @intention 身份证号码包含此信息
 
 @return 性别字符串 "男" or "女"
 */
- (NSString *)lxy_getSex;

/**
 @brief 通过当前字符串获取身份证上的年龄信息
 
 @intention 身份证号码包含此信息
 
 @return 年龄字符串
 */
- (NSString *)lxy_getAge;

@end

NS_ASSUME_NONNULL_END
