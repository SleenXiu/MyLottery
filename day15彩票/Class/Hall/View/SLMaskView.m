//
//  SLMaskView.m
//  day15彩票
//
//  Created by Sleen Xiu on 16/9/17.
//  Copyright © 2016年 cn.Xsoft. All rights reserved.
//

#import "SLMaskView.h"


@implementation SLMaskView
//static SLMaskView *mask;
+ (void)show {
    SLMaskView *mask = [[SLMaskView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    mask.backgroundColor = [UIColor blackColor];
    mask.alpha = 0.7;
    [SLKeyWindow addSubview:mask];
}

+ (void)hidden {
    for (UIView *view in SLKeyWindow.subviews) {
        if ([view isKindOfClass:[self class]]) {
            [view removeFromSuperview];
        }
    }
//    [mask removeFromSuperview];
//    mask = nil;
}
@end
