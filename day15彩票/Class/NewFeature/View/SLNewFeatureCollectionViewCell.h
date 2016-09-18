//
//  SLNewFeatureCollectionViewCell.h
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLNewFeatureCollectionViewCell : UICollectionViewCell
/**
 *  背景图片
 */
@property (nonatomic, strong) UIImage *image;

- (void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count;
@end
