//
//  SLSettingTableViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLSettingTableViewController.h"
#import "SLPushTableViewController.h"
#import "SLScoreViewController.h"

#import "SLSettingGroup.h"
#import "SLSettingItem.h"
#import "SLSettingArrowItem.h"
#import "SLSettingSwitchItem.h"
@interface SLSettingTableViewController ()

@end

@implementation SLSettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"设置";
    
    // 添加第0组
    [self setupGroup0];
    // 添加第1组
    [self setupGroup1];
    // 添加第2组
    [self setupGroup2];
}
/**
 *  第0组
 */
- (void)setupGroup0 {
    
    SLSettingArrowItem *item = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码"];
    __weak typeof(self) weakSelf = self;
    
    item.operation = ^(NSIndexPath *indexPath){
        UIViewController *vc =  [[UIViewController alloc] init];
        vc.title = @"asdf";
        vc.view.backgroundColor = [UIColor redColor];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    // 创建组模型
    SLSettingGroup *group = [SLSettingGroup groupWithItems:@[item]];
    group.headerTitle = @"123";
    group.footTitle = @"qeqrere";
    
    // 添加到总数组中
    [self.groups addObject:group];
}
/**
 *  第1组
 */
- (void)setupGroup1{
    
    SLSettingArrowItem *item1 = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"MorePush"] title:@"推送和提醒"];
    item1.desVc = [SLPushTableViewController class];
    
    SLSettingSwitchItem *item2 = [SLSettingSwitchItem itemWithImage:[UIImage imageNamed:@"handShake"] title:@"使用摇一摇机选"];
    item2.open = YES;
    
    SLSettingSwitchItem *item3 = [SLSettingSwitchItem itemWithImage:[UIImage imageNamed:@"sound_Effect"] title:@"声音效果"];
    
    SLSettingSwitchItem *item4 = [SLSettingSwitchItem itemWithImage:[UIImage imageNamed:@"More_LotteryRecommend"] title:@"购彩小助手"];
    // 创建组模型
    SLSettingGroup *group = [SLSettingGroup groupWithItems:@[item1, item2, item3, item4]];
    group.headerTitle = @"hah";
    group.footTitle = @"qweeiwieweiie";
    
    // 添加到总数组中
    [self.groups addObject:group];
}
/**
 *   第2组
 */
- (void)setupGroup2{
   
    SLSettingArrowItem *item1 = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"检查新版本"];
    item1.operation = ^(NSIndexPath *indexPath){
        
        
    };
    
    SLSettingArrowItem *item2 = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreShare"] title:@"分享"];
    
    SLSettingArrowItem *item3 = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreNetease"] title:@"产品推荐"];
    
    SLSettingArrowItem *item4 = [SLSettingArrowItem itemWithImage:[UIImage imageNamed:@"MoreAbout"] title:@"关于"];
    // 创建组模型
    SLSettingGroup *group = [SLSettingGroup groupWithItems:@[item1, item2, item3, item4]];
    
    group.headerTitle = @"hah13414";
    group.footTitle = @"qweeiodooddo";
    // 添加到总数组中
    [self.groups addObject:group];
}

@end
