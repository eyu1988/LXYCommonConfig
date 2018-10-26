//
//  UIImage+LXYImageCorner.m
//  LXYLayerCorner
//
//  Created by LiuXianyu on 2018/10/26.
//  Copyright © 2018 LiuXianyu. All rights reserved.
//

#import "UIImage+LXYImageCorner.h"

@implementation UIImage (LXYImageCorner)

- (UIImage *)addCornerRadius:(CGFloat)radius withBounds:(CGRect)rect
{    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius] addClip];
    [self drawInRect:rect];
    UIImage * radiusImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return radiusImg;
}

@end
