//
//  SLNewFeatureCollectionViewCell.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLNewFeatureCollectionViewCell.h"
#import "SLTabBarController.h"
@interface SLNewFeatureCollectionViewCell()
@property (nonatomic, strong) UIImageView *bgImageView;
/**
 *  立即体验按钮
 */
@property (nonatomic, strong) UIButton *startBtn;
@end

@implementation SLNewFeatureCollectionViewCell

- (UIButton *)startBtn {
    if (_startBtn == nil) {
        
        _startBtn = [[UIButton alloc] init];
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        [_startBtn sizeToFit];
        
        // 一定要在按钮有尺寸的时候，再调整位置
        _startBtn.center = CGPointMake(self.contentView.width * 0.5f, self.contentView.height * 0.9f);
        [_startBtn addTarget:self action:@selector(startBtnOnclick:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:_startBtn];
    }
    return _startBtn;
}
// 开始按钮点击调用的方法
- (void)startBtnOnclick:(UIButton *)button {
    SLTabBarController *tabBarVc = [[SLTabBarController alloc] init];
    // 切换跟控制器
    SLKeyWindow.rootViewController = tabBarVc;
}
- (UIImageView *)bgImageView {
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_bgImageView];
    }
    return _bgImageView;
}

- (void)setImage:(UIImage *)image {
    _image = image;
    // 设置image
    self.bgImageView.image = image;
}

- (void)setIndexPath:(NSIndexPath *)indexPath count:(NSInteger)count {
    // 当时最后一个cell的时候，添加立即体验按钮
    if (indexPath.item + 1 == count) {
        // 添加立即体验按钮
        self.startBtn.hidden = NO;
    }else{ // 不是最后一个cell
        // 隐藏立即体验按钮
        self.startBtn.hidden = YES;
    }
}

@end
