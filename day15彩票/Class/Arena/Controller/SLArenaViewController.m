//
//  SLArenaViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLArenaViewController.h"

@interface SLArenaViewController ()

@end

@implementation SLArenaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"足球", @"篮球"]];

    [seg setTitleTextAttributes:@{
                                  NSFontAttributeName : [UIFont systemFontOfSize:18],
                                  NSForegroundColorAttributeName : [UIColor whiteColor]
                                  }
                       forState:UIControlStateNormal];
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [seg setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    seg.tintColor = SLColor(52, 137, 140, 1);
    seg.selectedSegmentIndex = 0;
    
    self.navigationItem.titleView = seg;

}
- (void)loadView {
    
    UIImageView *imView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    imView.image = [UIImage imageNamed:@"NLArenaBackground"];
    imView.userInteractionEnabled = YES;
    self.view = imView;
}

@end
