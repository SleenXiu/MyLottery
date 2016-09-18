//
//  SLAwardViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLAwardViewController.h"

@interface SLAwardViewController ()

@end

@implementation SLAwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGroup0];
}
/**
 *  第0组
 */
- (void)setupGroup0{
    SLSettingItem *item0 = [SLSettingSwitchItem itemWithTitle:@"双色球"];
    item0.subTitle = @"每天开奖";
    
    SLSettingItem *item1 = [SLSettingSwitchItem itemWithTitle:@"双色球"];
    item1.subTitle = @"每天开奖";
    
    SLSettingItem *item2 = [SLSettingSwitchItem itemWithTitle:@"双色球"];
    item2.subTitle = @"每天开奖";
    
    SLSettingItem *item3 = [SLSettingSwitchItem itemWithTitle:@"双色球"];
    item3.subTitle = @"每天开奖";
    
    SLSettingItem *item4 = [SLSettingSwitchItem itemWithTitle:@"双色球"];
    item4.subTitle = @"每天开奖";
    
    SLSettingGroup *group = [SLSettingGroup groupWithItems:@[item0, item1, item2, item3, item4]];
    
    [self.groups addObject:group];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SLSettingTableViewCell *cell = [SLSettingTableViewCell cellWithTableView:tableView style:UITableViewCellStyleSubtitle];
    
    cell.detailTextLabel.font = [UIFont systemFontOfSize:10];
    
    // 从总数组中取出组模型数组
    SLSettingGroup *group = self.groups[indexPath.section];
    
    // 从行模型数组中取出行模型
    SLSettingItem *item = group.items[indexPath.row];
    // 传递模型
    cell.item = item;
    
    return cell;
}
@end
