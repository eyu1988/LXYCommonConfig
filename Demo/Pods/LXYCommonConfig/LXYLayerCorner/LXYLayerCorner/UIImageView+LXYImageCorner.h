//
//  UIImageView+LXYImageCorner.h
//  LXYLayerCorner
//
//  Created by LiuXianyu on 2018/10/26.
//  Copyright © 2018 LiuXianyu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (LXYImageCorner)

/**
 @brief 给 UIImageView 的 image 重新绘制成添加了圆角的图片。
 
 @intention 避免使用 masksToBounds = YES 而导致触发离屏渲染，造成性能问题。
 
 @param radius 弧度值
 */
- (void)addCornerRadius:(CGFloat)radius;

@end

NS_ASSUME_NONNULL_END
