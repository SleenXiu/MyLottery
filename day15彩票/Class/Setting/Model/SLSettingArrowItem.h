//
//  SLSettingArrowItem.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//
//  箭头cell模型

#import "SLSettingItem.h"
@interface SLSettingArrowItem : SLSettingItem

// 跳转目标控制器 1.绑定类名字符串 2.绑定类名
/**  目标控制器类名 */
@property (nonatomic, assign) Class desVc;
@end
