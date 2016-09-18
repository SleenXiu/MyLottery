//
//  SLSettingTableViewCell.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLSettingItem.h"
#import "SLSettingSwitchItem.h"
#import "SLSettingArrowItem.h"
#import "SLSettingGroup.h"

@interface SLSettingTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;
/**
 *  航模型
 */
@property (nonatomic, strong) SLSettingItem *item;
@end
