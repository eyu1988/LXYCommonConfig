//
//  UIImage+LXYRotate.h
//  LXYImageCategory
//
//  Created by Lucas on 2018/11/10.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LXYRotate)

/** 纠正图片的方向 */
- (UIImage *)lxy_fixOrientation;

/** 按给定的方向旋转图片 */
- (UIImage*)lxy_rotate:(UIImageOrientation)orient;

/** 垂直翻转 */
- (UIImage *)lxy_flipVertical;

/** 水平翻转 */
- (UIImage *)lxy_flipHorizontal;

/** 将图片旋转degrees角度 */
- (UIImage *)lxy_imageRotatedByDegrees:(CGFloat)degrees;

/** 将图片旋转radians弧度 */
- (UIImage *)lxy_imageRotatedByRadians:(CGFloat)radians;

@end

NS_ASSUME_NONNULL_END
