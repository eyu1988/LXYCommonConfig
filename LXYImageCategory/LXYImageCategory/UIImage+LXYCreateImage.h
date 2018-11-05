//
//  UIImage+LXYCreateImage.h
//  LXYImageCategory
//
//  Created by Lucas on 2018/11/5.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LXYCreateImage)

/**
 *  描述: 通过色值生成纯色图
 *
 *  @param color 色值
 *
 *  @return UIImage纯色图
 */
+ (UIImage *)createImageWithColor:(UIColor*)color;

@end

NS_ASSUME_NONNULL_END
