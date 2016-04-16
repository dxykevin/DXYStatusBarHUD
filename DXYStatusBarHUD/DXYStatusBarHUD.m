//
//  DXYStatusBarHUD.m
//  状态栏指示器
//
//  Created by 杜新元 on 16/4/16.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "DXYStatusBarHUD.h"

@implementation DXYStatusBarHUD

/** 全局窗口 */
static UIWindow *window_;
/** 定时器 */
static NSTimer *timer_;

+ (void)showMessage:(NSString *)message {
    
    [self showMessage:message image:nil];
}

/** 显示成功信息 */
+ (void)showSuccess:(NSString *)message {
    
    [self showMessage:message image:[UIImage imageNamed:@"DXYStatusBarHUD.bundle/check"]];
}

/** 显示失败信息 */
+ (void)showError:(NSString *)message {
    
    [self showMessage:message image:[UIImage imageNamed:@"DXYStatusBarHUD.bundle/error"]];
}

/** 显示加载信息 */
+ (void)showLoading:(NSString *)message {
    
    window_ = [[UIWindow alloc] init];
    window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window_.windowLevel = UIWindowLevelAlert;
    window_.hidden = NO;
    
    /** 添加文字 */
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:12];
    label.frame = window_.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = message;
    label.textColor = [UIColor whiteColor];
    /** 计算label的宽度 */
    CGFloat messageW = [message sizeWithAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:12]}].width;
    [window_ addSubview:label];
    
    /** 添加圈圈 */
    UIActivityIndicatorView *loadingView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleWhite)];
    [loadingView startAnimating];
    loadingView.center = CGPointMake(([UIScreen mainScreen].bounds.size.width - messageW) / 2 - 20, 10);
    [window_ addSubview:loadingView];
}

/** 隐藏 */
+ (void)hide {
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = window_.frame;
        frame.origin.y = -frame.size.height;
        window_.frame = frame;
    } completion:^(BOOL finished) {
        timer_ = nil;
        window_ = nil;
    }];
}

/** 显示普通信息 */
+ (void)showMessage:(NSString *)message image:(UIImage *)image {
    
    /** 停止定时器 */
    [timer_ invalidate];
    timer_ = nil;
    
    /** 动画 */
    CGRect frame = CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 20);
    
    window_.hidden = YES;
    window_ = [[UIWindow alloc] init];
    window_.frame = frame;
    window_.windowLevel = UIWindowLevelAlert;
    window_.hidden = NO;
    
    frame.origin.y = 0;
    [UIView animateWithDuration:0.3 animations:^{
        window_.frame = frame;
    }];
    /** 添加按钮 */
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setTitle:message forState:(UIControlStateNormal)];
    if (image) {
        /** 如果有图片 */
        [button setImage:image forState:(UIControlStateNormal)];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 15, 0, 0);
    }
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    button.frame = window_.bounds;
    
    [window_ addSubview:button];
    
    /** 定时消失 */
    timer_ = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(hide) userInfo:nil repeats:NO];
}
@end
