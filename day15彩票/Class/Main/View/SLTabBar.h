//
//  SLTabBar.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SLTabBar;

@protocol SLTabBarDelegate <NSObject>

@optional
- (void)tabBar:(SLTabBar *)tabBar changeIndex:(NSInteger)index;

@end

@interface SLTabBar : UIView
/** items */
@property (nonatomic, strong) NSArray *items;
/** 代理 */
@property (nonatomic, weak) id<SLTabBarDelegate> delegate;
@end
