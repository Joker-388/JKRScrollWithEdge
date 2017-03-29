//
//  JKRScrollView.m
//  JKRScrollDemo
//
//  Created by tronsis_ios on 17/3/23.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "JKRScrollView.h"

UIKIT_EXTERN CGFloat scrollImagesCount;

@implementation JKRScrollView

// 扩大scrollView触摸事件响应范围
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bigRect = CGRectMake(-20, 0, self.contentSize.width + scrollImagesCount * 60, self.frame.size.height);
    BOOL isInsdie = CGRectContainsPoint(bigRect, point);
    return isInsdie;
}

@end
