//
//  SLHallTableViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLHallTableViewController.h"
#import "SLPopMenu.h"
#import "SLMaskView.h"
@interface SLHallTableViewController ()<SLPopMenuDelegate>

@end

@implementation SLHallTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriginal:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(leftClick)];
}

- (void)leftClick {
    
    [SLMaskView show];
    
    SLPopMenu *popMenu = [SLPopMenu popMenuShowInCenter:self.view.center];
    popMenu.delegate = self;
    
}
- (void)popMenu:(SLPopMenu *)menu cancelBtnClick:(UIButton *)btn {
    
    [menu hiddenInCenter:CGPointMake(44, 44) completion:^{
        [UIView animateWithDuration:0.25 animations:^{
            [SLMaskView hidden];
        }];
    }];
    
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}
@end
