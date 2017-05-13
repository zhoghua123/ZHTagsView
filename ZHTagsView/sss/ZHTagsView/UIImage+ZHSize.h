//
//  UIImage+ZHSize.h
//  sss
//
//  Created by xyj on 17/5/11.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZHSize)
#pragma mark 默认从图片中心点开始拉伸图片
+ (UIImage *)resizedImage:(NSString *)imgName;

@end
