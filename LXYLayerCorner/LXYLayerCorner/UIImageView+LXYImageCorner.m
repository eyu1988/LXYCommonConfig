//
//  UIImageView+LXYImageCorner.m
//  LXYLayerCorner
//
//  Created by LiuXianyu on 2018/10/26.
//  Copyright © 2018 LiuXianyu. All rights reserved.
//

#import "UIImageView+LXYImageCorner.h"

@implementation UIImageView (LXYImageCorner)

- (void)addCornerRadius:(CGFloat)radius
{
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius];
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), bezierPath.CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self.image drawInRect:self.bounds];
    UIImage * radiusImg = UIGraphicsGetImageFromCurrentImageContext();
    self.image = radiusImg;
    UIGraphicsEndImageContext();
}

@end
