//
//  SLTabBar.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLTabBar.h"
#import "SLTabBarButton.h"

@interface SLTabBar ()
/** 索引 */
@property (nonatomic, assign) NSInteger index;
/** 当前按钮 */
@property (nonatomic, weak) SLTabBarButton *curButton;
@end
@implementation SLTabBar

- (void)setItems:(NSArray *)items {
    _items = items;
    
    for (UITabBarItem *item in items) {
        SLTabBarButton *btn = [SLTabBarButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        [self addSubview:btn];
    }
}

- (void)btnClick:(SLTabBarButton *)btn {
    
    self.curButton.selected = NO;
    btn.selected = YES;
    self.curButton = btn;
    
    if ([self.delegate respondsToSelector:@selector(tabBar:changeIndex:)]) {
        [self.delegate tabBar:self changeIndex:btn.tag];
    }
}
- (void)layoutSubviews {
    
    CGFloat btnW = self.width / self.items.count;
    CGFloat btnH = self.height;
    CGFloat btnY = 0;
    CGFloat btnX = 0;
    
    for (int i= 0; i < self.items.count; i++) {
        SLTabBarButton *btn = self.subviews[i];
        btnX = btnW * i;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        btn.tag = i;
        
        if (i == 0) {
            btn.selected = YES;
            self.curButton = btn;
        }
    }
}
@end
