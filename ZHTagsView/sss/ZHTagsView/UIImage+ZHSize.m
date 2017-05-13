//
//  UIImage+ZHSize.m
//  sss
//
//  Created by xyj on 17/5/11.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import "UIImage+ZHSize.h"

@implementation UIImage (ZHSize)
#pragma mark 默认从图片中心点开始拉伸图片
+ (UIImage *)resizedImage:(NSString *)imgName {
    return [self resizedImage:imgName xPos:0.5 yPos:0.5];
}

#pragma mark 可以自由拉伸的图片
+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos {
    UIImage *image = [UIImage imageNamed:imgName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * xPos topCapHeight:image.size.height * yPos];
}

@end
