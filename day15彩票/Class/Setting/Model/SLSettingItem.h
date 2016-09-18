//
//  SLSettingItem.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//
//  cell模型

#import <Foundation/Foundation.h>

@interface SLSettingItem : NSObject
/**  图标 */
@property (nonatomic, strong) UIImage *image;
/**  标题 */
@property (nonatomic, copy) NSString *title;
/**  子标题 */
@property (nonatomic, copy) NSString *subTitle;
/**  点击这行cell要做的事情 */
@property (nonatomic, strong) void(^operation)(NSIndexPath *indexPath);

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title;
@end
