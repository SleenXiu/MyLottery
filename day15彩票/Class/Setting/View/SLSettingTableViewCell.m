//
//  SLSettingTableViewCell.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLSettingTableViewCell.h"


@implementation SLSettingTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style{
    static NSString *ID = @"cell";
    
    SLSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    if (cell == nil) {
        cell = [[SLSettingTableViewCell alloc] initWithStyle:style reuseIdentifier:ID];
    }
    return cell;
}
+ (instancetype)cellWithTableView:(UITableView *)tableView{
    return [self cellWithTableView:tableView style:UITableViewCellStyleValue1];
}
- (void)setItem:(SLSettingItem *)item{
    _item = item;
    self.imageView.image = item.image;
    self.textLabel.text = item.title;
    self.detailTextLabel.text = item.subTitle;
    
    [self setupRightView];
}
/**
 *  设置右侧视图
 */
- (void)setupRightView{
    if ([_item isKindOfClass:[SLSettingArrowItem class]]) { // 剪头
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }else if ([_item isKindOfClass:[SLSettingSwitchItem class]]){
        SLSettingSwitchItem *swItem = (SLSettingSwitchItem *)_item;
        UISwitch *sw = [[UISwitch alloc] init];
        sw.on = swItem.open;
        
        self.accessoryView = sw;
    }else{
        // 注意, 一定要清空
        self.accessoryView = nil;
    }

}
@end
