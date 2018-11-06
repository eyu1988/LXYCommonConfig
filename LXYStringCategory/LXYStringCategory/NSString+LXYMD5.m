//
//  NSString+LXYMD5.m
//  LXYStringCategory
//
//  Created by Lucas on 2018/11/6.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "NSString+LXYMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (LXYMD5)

#pragma mark - 32位 小写 MD5加密
- (NSString *)lxy_MD5ForLower32Bit
{
    //要进行UTF8的转码
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    
    return digest;
}

#pragma mark - 32位 大写 MD5加密
- (NSString *)lxy_MD5ForUpper32Bit
{
    //要进行UTF8的转码
    const char* input = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(input, (CC_LONG)strlen(input), result);
    
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    
    return digest;
}

#pragma mark - 16位 小写 MD5加密
- (NSString *)lxy_MD5ForLower16Bit
{
    NSString *md5Str = [self lxy_MD5ForLower32Bit];
    
    NSString  *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}

#pragma mark - 16位 大写 MD5加密
- (NSString *)lxy_MD5ForUpper16Bit
{
    NSString *md5Str = [self lxy_MD5ForUpper32Bit];
    
    NSString  *string;
    for (int i=0; i<24; i++) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    return string;
}

@end
