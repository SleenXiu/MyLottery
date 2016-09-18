//
//  SLSettingGroup.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//  组模型

#import <Foundation/Foundation.h>

@interface SLSettingGroup : NSObject
/**  行模型数组 */
@property (nonatomic, strong) NSArray *items;
/**  头部标题 */
@property (nonatomic, copy) NSString *headerTitle;
/**  尾部标题 */
@property (nonatomic, copy) NSString *footTitle;

+ (instancetype)groupWithItems:(NSArray *)items;
@end
