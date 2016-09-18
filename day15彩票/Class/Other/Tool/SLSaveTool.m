//
//  SLSaveTool.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLSaveTool.h"

@implementation SLSaveTool

+ (id)objectForKey:(NSString *)defaultName{
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}
+ (void)setObject:(id)value forKey:(NSString *)defaultName{
    // 偏好设置不能存储nil
    if (defaultName) {
        // 保存当前版本
        [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
        // 立即同步
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
@end
