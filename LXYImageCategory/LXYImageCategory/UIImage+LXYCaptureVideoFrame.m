//
//  UIImage+LXYCaptureVideoFrame.m
//  LXYImageCategory
//
//  Created by Lucas on 2018/11/9.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "UIImage+LXYCaptureVideoFrame.h"
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAssetImageGenerator.h>
#import <AVFoundation/AVAsset.h>

@implementation UIImage (LXYCaptureVideoFrame)

+ (UIImage *)lxy_captureVideoFrameWithURL:(NSURL *)videoURL second:(NSTimeInterval)second
{
    
    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:videoURL
                                                options:nil];
    NSParameterAssert(asset);
    AVAssetImageGenerator *assetImageGenerator =[[AVAssetImageGenerator alloc] initWithAsset:asset];
    assetImageGenerator.appliesPreferredTrackTransform = YES;
    assetImageGenerator.apertureMode = AVAssetImageGeneratorApertureModeEncodedPixels;
    
    CGImageRef thumbnailImageRef = NULL;
    CFTimeInterval thumbnailImageTime = second;
    NSError *thumbnailImageGenerationError = nil;
    
    thumbnailImageRef = [assetImageGenerator copyCGImageAtTime:CMTimeMake(thumbnailImageTime, 20)
                                                    actualTime:NULL
                                                         error:&thumbnailImageGenerationError];
    
    if(!thumbnailImageRef) {
        NSLog(@"thumbnailImageGenerationError %@",thumbnailImageGenerationError);
    }
    
    UIImage * thumbnailImage = thumbnailImageRef ? [[UIImage alloc] initWithCGImage:thumbnailImageRef] : nil;
    
    return thumbnailImage;
}

@end
