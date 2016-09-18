//
//  SLTabBarController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLTabBarController.h"
#import "SLTabBar.h"
#import "SLNavController.h"
#import "SLArenaNavController.h"

#import "SLArenaViewController.h"
#import "SLDiscoverTableViewController.h"
#import "SLHallTableViewController.h"
#import "SLHistoryTableViewController.h"
#import "SLMyLotteryViewController.h"

@interface SLTabBarController ()<SLTabBarDelegate>
/** 保存tabBarItem */
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation SLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setAllController];
    
    [self setMyTabBar];
}

#pragma mark - 懒加载
- (NSMutableArray *)items {
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

#pragma mark - 自定义tabBar
- (void)setMyTabBar {
    
    SLTabBar *tabBar = [[SLTabBar alloc] initWithFrame:self.tabBar.bounds];
    tabBar.items = self.items;
    tabBar.delegate = self;
    [self.tabBar addSubview:tabBar];
    /*
     为什么要添加到tabbar上？
     方便以后控制器隐藏tabBar，如果是暴力移除tabbar，接下来的隐藏tabbar要自己去实现
     */
}
// 在view将要出现的时候，移除原有tabBar上的所有子控件，
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    for (UIView *view in self.tabBar.subviews) {
        
//        NSString *classStr = NSStringFromClass([view class]);
//        if ([classStr hasPrefix:@"UITabBarButton"]) {
//            [view removeFromSuperview];
//        }
        
//        if ([view isKindOfClass:[UIControl class]]) {
//            [view removeFromSuperview];
//        }
        
        if(![view isKindOfClass:[SLTabBar class]]) {
            [view removeFromSuperview];
        }
    }
}

#pragma mark - tabBar代理方法
- (void)tabBar:(SLTabBar *)tabBar changeIndex:(NSInteger)index {
    self.selectedIndex = index;
}

#pragma mark - 添加子控制器
-(void)setAllController {
    
    SLHallTableViewController *hall = [[SLHallTableViewController alloc] init];
    [self setController:hall withImage:@"TabBar_Hall_new" selectImage:@"TabBar_Hall_selected_new" title:@"购彩大厅"];
    
    SLArenaViewController *arena = [[SLArenaViewController alloc] init];
    [self setController:arena withImage:@"TabBar_Arena_new" selectImage:@"TabBar_Arena_selected_new" title:@""];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:NSStringFromClass([SLDiscoverTableViewController class]) bundle:nil];
    SLDiscoverTableViewController *discover = [storyboard instantiateInitialViewController];
    [self setController:discover withImage:@"TabBar_Discovery_new" selectImage:@"TabBar_Discovery_selected_new" title:@"广场"];
    
    SLHistoryTableViewController *history = [[SLHistoryTableViewController alloc] init];
    [self setController:history withImage:@"TabBar_History_new" selectImage:@"TabBar_History_selected_new" title:@"开奖历史"];
    
    SLMyLotteryViewController *myLottery = [[SLMyLotteryViewController alloc] init];
    [self setController:myLottery withImage:@"TabBar_MyLottery_new" selectImage:@"TabBar_MyLottery_selected_new" title:@"我的彩票"];
}
- (void)setController:(UIViewController *)vc withImage:(NSString *)image selectImage:(NSString *)sImage title:(NSString *)title{
    
    UINavigationController *nav =[[SLNavController alloc] initWithRootViewController:vc];
    if ([vc isKindOfClass:[SLArenaViewController class]]) {
        nav = [[SLArenaNavController alloc] initWithRootViewController:vc];
    }
    
    [self addChildViewController:nav];
    
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:sImage];
    [self.items addObject:vc.tabBarItem];
}


@end
