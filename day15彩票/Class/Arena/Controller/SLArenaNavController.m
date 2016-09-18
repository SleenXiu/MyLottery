//
//  SLArenaNavController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLArenaNavController.h"

@interface SLArenaNavController ()

@end

@implementation SLArenaNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize {
    if (self == [SLArenaNavController self]) {
        UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
        // 导航栏背景图片
        [navBar setBackgroundImage:[UIImage resizeImageName:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
        // 导航栏标题
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSFontAttributeName] = [UIFont systemFontOfSize:22];
        dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        [navBar setTitleTextAttributes:dict];
        // 主题色
        navBar.tintColor = [UIColor whiteColor];
        // 移除返回按钮文字
        UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[self]];
        [item setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -64) forBarMetrics:UIBarMetricsDefault];
    }
}

@end
