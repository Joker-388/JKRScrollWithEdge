//
//  JKRView.m
//  JKRScrollDemo
//
//  Created by tronsis_ios on 17/3/29.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "JKRView.h"

UIKIT_EXTERN CGFloat scrollViewWidth;
UIKIT_EXTERN CGFloat scrollViewHeight;

@implementation JKRView

- (instancetype)initWithFrame:(CGRect)frame {
    frame = [[UIScreen mainScreen] bounds];
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, scrollViewHeight, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - scrollViewHeight)];
    [[UIColor lightGrayColor] setFill];
    CGContextAddPath(context, path.CGPath);
    CGContextFillPath(context);
}

@end
