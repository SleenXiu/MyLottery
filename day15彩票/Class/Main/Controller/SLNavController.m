//
//  SLNavController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLNavController.h"

@interface SLNavController ()<UIGestureRecognizerDelegate>

@end

@implementation SLNavController

+ (void)initialize {
    // 当时这个类本身第一次加载的时候调用
    // 其子类加载时不调用
    if (self == [SLNavController self]) {
        
        UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
        // 导航栏背景图片
        [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
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

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScreenEdgePanGestureRecognizer *gesture = (UIScreenEdgePanGestureRecognizer *)self.interactivePopGestureRecognizer;
    NSArray *targets = [gesture valueForKeyPath:@"_targets"];
    // 取出target
    id target = [targets[0] valueForKeyPath:@"_target"];
    // 禁止系统的
    self.interactivePopGestureRecognizer.enabled = NO;
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    pan.delegate = self;

}
- (void)handleNavigationTransition:(id)target
{
}
// 返回YES收拾可以交互, 返回NO不能交互
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    //    NSLog(@"%ld",self.childViewControllers.count);
    // != 1 非跟控制器 > 1
    return self.childViewControllers.count > 1;
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 一定要写在前面才有用，
    if (self.childViewControllers.count != 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}
@end
