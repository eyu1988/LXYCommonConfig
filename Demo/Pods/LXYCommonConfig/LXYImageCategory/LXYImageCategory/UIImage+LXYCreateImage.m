//
//  UIImage+LXYCreateImage.m
//  LXYImageCategory
//
//  Created by Lucas on 2018/11/5.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "UIImage+LXYCreateImage.h"

@implementation UIImage (LXYCreateImage)

+ (UIImage *)createImageWithColor:(UIColor*)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
