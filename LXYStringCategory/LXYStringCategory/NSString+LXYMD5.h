//
//  NSString+LXYMD5.h
//  LXYStringCategory
//
//  Created by Lucas on 2018/11/6.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LXYMD5)

/**
 *  字符串的MD5 32位 小写处理
 *
 *  @return MD5处理后的字符串
 */
- (NSString *)lxy_MD5ForLower32Bit;

/**
 *  字符串的MD5 32位 大写处理
 *
 *  @return MD5处理后的字符串
 */
- (NSString *)lxy_MD5ForUpper32Bit;

/**
 *  字符串的MD5 16位 小写处理
 *
 *  @return MD5处理后的字符串
 */
- (NSString *)lxy_MD5ForLower16Bit;

/**
 *  字符串的MD5 16位 大写处理
 *
 *  @return MD5处理后的字符串
 */
- (NSString *)lxy_MD5ForUpper16Bit;

@end

NS_ASSUME_NONNULL_END
