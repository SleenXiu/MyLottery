//
//  SLPopMenu.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SLPopMenu;
@protocol SLPopMenuDelegate <NSObject>

@optional
- (void)popMenu:(SLPopMenu *)menu cancelBtnClick:(UIButton *)btn;

@end
@interface SLPopMenu : UIView
+ (instancetype)popMenuShowInCenter:(CGPoint)center;
- (void)hiddenInCenter:(CGPoint)center completion:(void(^)())completion;

/** 代理 */
@property (nonatomic, weak) id<SLPopMenuDelegate> delegate;
@end
