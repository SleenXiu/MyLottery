//
//  SLBaseTableViewController.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SLSettingTableViewCell.h"

@interface SLBaseTableViewController : UITableViewController
/**  控制器的所有组 */
@property (nonatomic, strong) NSMutableArray *groups;
@end
