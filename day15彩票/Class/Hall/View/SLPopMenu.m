//
//  SLPopMenu.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLPopMenu.h"

@implementation SLPopMenu
+ (instancetype)popMenuShowInCenter:(CGPoint)center {
    SLPopMenu *popMenu = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] lastObject];
    popMenu.center = center;
    [SLKeyWindow addSubview:popMenu];
    return popMenu;
}

- (IBAction)cancelBtnClick:(UIButton *)btn {
    if ([self.delegate respondsToSelector:@selector(popMenu:cancelBtnClick:)]) {
        [self.delegate popMenu:self cancelBtnClick:btn];
    }
}
    
- (void)hiddenInCenter:(CGPoint)center completion:(void (^)())completion {
    [UIView animateWithDuration:0.5 animations:^{
        
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        self.center = center;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        
        if (completion) {
            completion();
        }
    }];
    
    
}
@end
