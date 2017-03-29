//
//  ViewController.m
//  JKRScrollDemo
//
//  Created by tronsis_ios on 17/3/23.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "ViewController.h"
#import "JKRView.h"
#import "JKRScrollView.h"

CGFloat scrollViewWidth;
CGFloat scrollViewHeight;
CGFloat scrollImagesCount;

@interface ViewController ()

@property (nonatomic, strong) JKRScrollView *scrollView;
@property (nonatomic, strong) NSArray<NSString *> *images;

@end

@implementation ViewController

- (void)loadView {
    scrollViewWidth = [UIScreen mainScreen].bounds.size.width - 60;
    scrollViewHeight = scrollViewWidth * 0.6;
    scrollImagesCount = self.images.count;
    self.view = [JKRView new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView];
    for (unsigned int i = 0; i < self.images.count; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * scrollViewWidth + 20, 0, scrollViewWidth - 20, scrollViewHeight)];
        imageView.image = [UIImage imageNamed:self.images[i]];
        [self.scrollView addSubview:imageView];
    }
}

- (JKRScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[JKRScrollView alloc] init];
        _scrollView = [[JKRScrollView alloc] initWithFrame:CGRectMake(20, 0, scrollViewWidth, scrollViewHeight)];
        // 这些设置写在初始化方法里更好，写这里是为了集中代码，便于查看
        _scrollView.pagingEnabled = YES;
        _scrollView.clipsToBounds = NO;
        _scrollView.contentSize = CGSizeMake(self.images.count * scrollViewWidth, scrollViewHeight);
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}

- (NSArray<NSString *> *)images {
    if (!_images) {
        _images = @[@"0", @"1", @"2", @"3", @"4", @"5"];
    }
    return _images;
}

@end
