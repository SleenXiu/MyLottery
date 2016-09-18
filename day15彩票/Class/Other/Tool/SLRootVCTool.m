//
//  SLRootVCTool.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/18.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLRootVCTool.h"
#import "SLNewFeatureViewController.h"
#import "SLTabBarController.h"

@implementation SLRootVCTool

+ (UIViewController *)chooseWindowRootVc {

    UIViewController *rootVc;
    // 取出当前版本
    NSString *currVerson = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    // 取出上一次保存的版本
    NSString *odlVerson = [SLSaveTool objectForKey:SLVerson];
    // 判断有无新版本
    if ([currVerson isEqualToString:odlVerson]) {
        // 没有新版本，进入主框架
        // 设置窗口的根控制器
        rootVc = [[SLTabBarController alloc] init];
    }else{
        // 有新版本
        // 显示新特性界面
        rootVc = [[SLNewFeatureViewController alloc] init];
        [SLSaveTool setObject:currVerson forKey:SLVerson];
    }
    return rootVc;
}

@end
