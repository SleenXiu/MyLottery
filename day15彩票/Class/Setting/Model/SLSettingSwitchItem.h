//
//  SLSettingSwitchItem.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//  开关cell模型

#import "SLSettingItem.h"

@interface SLSettingSwitchItem : SLSettingItem
/**  状态 */
@property (nonatomic, assign, getter=isOpen) BOOL open;
@end
