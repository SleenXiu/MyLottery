//
//  SLSettingItem.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//


#import "SLSettingItem.h"

@implementation SLSettingItem

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title{
    SLSettingItem *item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}
+ (instancetype)itemWithTitle:(NSString *)title{
    return [self itemWithImage:nil title:title];
}
@end
