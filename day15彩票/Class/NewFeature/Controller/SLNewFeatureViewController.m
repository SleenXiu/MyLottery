//
//  SLNewFeatureViewController.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLNewFeatureViewController.h"
#import "SLNewFeatureCollectionViewCell.h"
@interface SLNewFeatureViewController ()
/**
 *  记录上次偏差
 */
@property (nonatomic, assign) CGFloat lastOffsetX;

@property (nonatomic, weak) UIImageView *guideImageView;
/**
 *  底部大标题
 */
@property (nonatomic, weak) UIImageView *guideLargeTextImageView;
/**
 *  底部小标题
 */
@property (nonatomic, weak) UIImageView *guideSmallTextImageView;
@end

@implementation SLNewFeatureViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init {
    // 创建流水布局
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    // 行间距
    flowLayout.minimumLineSpacing = 0;
    // 列间距
    flowLayout.minimumInteritemSpacing = 0;
    // 每个cell的尺寸
    flowLayout.itemSize = [UIScreen mainScreen].bounds.size;
    // 滚动方向，水平滚动
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [super initWithCollectionViewLayout:flowLayout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
    [self.collectionView registerClass:[SLNewFeatureCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    // 设置分页
    self.collectionView.pagingEnabled = YES;
    // 取消弹簧效果
    self.collectionView.bounces = NO;
    // 取消滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    // 添加图片
    [self addImageView];
}
- (void)addImageView {
    //guide1
    UIImageView *guideImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    [self.collectionView addSubview:guideImageView];
    guideImageView.x += 50;
    self.guideImageView = guideImageView;
    
    // guideLine
    UIImageView *guideLineImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    [self.collectionView addSubview:guideLineImageView];
    guideLineImageView.x -= 150;
    
    // guideLargeText1
    UIImageView *guideLargeTextImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    [self.collectionView addSubview:guideLargeTextImageView];
    guideLargeTextImageView.center = CGPointMake(self.collectionView.width * 0.5f, self.collectionView.height * 0.7);
    self.guideLargeTextImageView = guideLargeTextImageView;
    
    // guideSmallText1
    UIImageView *guideSmallTextImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    [self.collectionView addSubview:guideSmallTextImageView];
    guideSmallTextImageView.center = CGPointMake(self.collectionView.width * 0.5f, self.collectionView.height * 0.8);
    self.guideSmallTextImageView = guideSmallTextImageView;
}

// 当scrollView 减速的时候调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    // 平移一个偏差
    // 当前偏差
    CGFloat offsetX = scrollView.contentOffset.x;
    
    // 计算页码
    NSInteger page = offsetX / scrollView.width + 1;
    
    // 换图片
    NSString *name = [NSString stringWithFormat:@"guide%ld",page];
    UIImage *image = [UIImage imageNamed:name];
    self.guideImageView.image = image;
    
    // 大标题
    NSString *largeTextname = [NSString stringWithFormat:@"guideLargeText%ld",page];
    UIImage *largeTextimage = [UIImage imageNamed:largeTextname];
    self.guideLargeTextImageView.image = largeTextimage;
    
    // 小标题
    NSString *smallTextname = [NSString stringWithFormat:@"guideSmallText%ld",page];
    UIImage *smallTextimage = [UIImage imageNamed:smallTextname];
    self.guideSmallTextImageView.image = smallTextimage;
    
    // 偏差值
    CGFloat del = offsetX - self.lastOffsetX;
    
    self.guideImageView.x += del * 2;
    self.guideLargeTextImageView.x += del * 2;
    self.guideSmallTextImageView.x += del * 2;
    
    [UIView animateWithDuration:0.25f animations:^{
        self.guideImageView.x -= del;
        self.guideLargeTextImageView.x -= del;
        self.guideSmallTextImageView.x -= del;
    }];
    
    // 记录上次偏差
    self.lastOffsetX = offsetX;
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

#define SLPageCount 4
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return SLPageCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SLNewFeatureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    
    cell.image = [UIImage imageNamed:imageName];
    
    // 判断是否是最后一个cell
    [cell setIndexPath:indexPath count:SLPageCount];
    
    return cell;

}



@end
