//
//  UIImage+LXYCaptureVideoFrame.h
//  LXYImageCategory
//
//  Created by Lucas on 2018/11/9.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LXYCaptureVideoFrame)

/**
 @brief 获取视频的某一帧

 @param videoURL 视频URL
 @param second 第几秒
 @return 该秒的头帧图片
 */
+ (UIImage *)lxy_captureVideoFrameWithURL:(NSURL *)videoURL second:(NSTimeInterval)second;

@end

NS_ASSUME_NONNULL_END
