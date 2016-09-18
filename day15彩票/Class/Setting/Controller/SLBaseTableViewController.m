//
//  SLBaseTableViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLBaseTableViewController.h"
@interface SLBaseTableViewController ()

@end

@implementation SLBaseTableViewController
- (instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
- (NSMutableArray *)groups{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}
- (void)viewDidLoad {
    [super viewDidLoad];

}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // 取出行组型数组
    SLSettingGroup *group = self.groups[section];
    
    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SLSettingTableViewCell *cell = [SLSettingTableViewCell cellWithTableView:tableView];
    
    // 从总数组中取出组模型数组
    SLSettingGroup *group = self.groups[indexPath.section];
    
    // 从cell模型数组中取出cell模型
    SLSettingItem *item = group.items[indexPath.row];
    // 传递模型
    cell.item = item;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    // 从总数组中取出组模型数组
    SLSettingGroup *group = self.groups[indexPath.section];
    
    // 从cell模型数组中取出cell模型
    SLSettingItem *item = group.items[indexPath.row];
    
    if (item.operation) {
        item.operation(indexPath);
    }else if ([item isKindOfClass:[SLSettingArrowItem class]]) {
        // 只有剪头模型才具备跳转功能
        SLSettingArrowItem *arrowItem = (SLSettingArrowItem *)item;
        
        if (arrowItem.desVc) {
            // 如果有目标控制器
            // 拿到目标控制器类名 创建目标控制器
            UIViewController *vc = [[arrowItem.desVc alloc] init];
            vc.title = arrowItem.title;
            
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    // 取出组模型
    SLSettingGroup *group =  self.groups[section];
    return group.headerTitle;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:   (NSInteger)section{
    // 取出组模型
    SLSettingGroup *group =  self.groups[section];
    return group.footTitle;
}


@end
