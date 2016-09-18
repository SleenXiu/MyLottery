//
//  UIImage+SL.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SL)
/**
 *  渲染图片
 *
 *  @param name 图片名称
 *
 *  @return 返回没有渲染的图片
 */
+ (UIImage *)imageWithOriginal:(NSString *)name;
/**
 *  拉伸图片
 *
 *  @param name 图片名称
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizeImageName:(NSString *)name;
@end
