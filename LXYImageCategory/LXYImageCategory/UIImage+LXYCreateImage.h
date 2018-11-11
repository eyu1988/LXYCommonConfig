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


/** 截取当前image对象rect区域内的图像，坐标是以OrientationLandscapeRight为准的，x与y、width与height均调换*/
- (UIImage *)subImageWithRect:(CGRect)rect;

/** 压缩图片至指定尺寸 */
- (UIImage *)rescaleImageToSize:(CGSize)size;

/** 压缩图片至指定像素 */
- (UIImage *)rescaleImageToPX:(CGFloat )toPX;

/** 在指定的size里面生成一个平铺的图片 */
- (UIImage *)getTiledImageWithSize:(CGSize)size;

/** UIView转化为UIImage */
+ (UIImage *)imageFromView:(UIView *)view;

/** 将两个图片生成一张图片 */
+ (UIImage*)mergeImage:(UIImage*)firstImage withImage:(UIImage*)secondImage;

@end

NS_ASSUME_NONNULL_END
