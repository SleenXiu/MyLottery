//
//  SLPushTableViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLPushTableViewController.h"
#import "SLScoreViewController.h"
#import "SLAwardViewController.h"

@interface SLPushTableViewController ()

@end

@implementation SLPushTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGroup0];
}
/**
 *  第0组
 */
- (void)setupGroup0{
    
    // 第0组
    SLSettingArrowItem *item = [SLSettingArrowItem itemWithTitle:@"开奖推送"];
    item.desVc = [SLAwardViewController class];
    
    SLSettingArrowItem *item1 = [SLSettingArrowItem itemWithTitle:@"比分直播"];
    item1.desVc = [SLScoreViewController class];
    
    SLSettingArrowItem *item2 = [SLSettingArrowItem itemWithTitle:@"中奖动画"];
    
    SLSettingArrowItem *item3 = [SLSettingArrowItem itemWithTitle:@"购彩大厅"];
    
    // 创建组模型
    SLSettingGroup *group = [SLSettingGroup groupWithItems:@[item, item1, item2, item3]];
    
    // 添加到总数组中
    [self.groups addObject:group];
}
@end
