//
//  SLAllLotteryViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/18.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLAllLotteryViewController.h"
#import "SLTitleButton.h"
@interface SLAllLotteryViewController ()
@property (nonatomic, weak) UIButton *button;
@end

@implementation SLAllLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.设置titleView
    UIButton *button = [[SLTitleButton alloc] init];
    self.button = button;
    [button setTitle:@"全部菜种" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.titleView = button;
}




@end
