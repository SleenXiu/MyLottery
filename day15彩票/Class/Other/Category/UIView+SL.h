//
//  UIView+SL.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SL)

// 在分类中 @property 不会帮你实现 _成员属性, 仅仅是在头文件中声明get set方法, 需要在.m文件中实现get, set方法

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat x;

@property (nonatomic, assign) CGFloat y;

@end
