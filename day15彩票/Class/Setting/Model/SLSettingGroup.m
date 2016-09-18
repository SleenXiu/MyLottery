//
//  SLSettingGroup.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLSettingGroup.h"

@implementation SLSettingGroup
+ (instancetype)groupWithItems:(NSArray *)items{
    SLSettingGroup *group = [[SLSettingGroup alloc] init];
    group.items = items;
    return group;
}
@end
