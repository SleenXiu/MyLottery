//
//  UIImage+SL.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "UIImage+SL.h"

@implementation UIImage (SL)
+ (UIImage *)imageWithOriginal:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}
+ (UIImage *)resizeImageName:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name] ;
    return  [image stretchableImageWithLeftCapWidth:image.size.width * 0.5f topCapHeight:image.size.height * 0.5f];
    
}
@end
