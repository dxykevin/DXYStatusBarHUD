//
//  DXYStatusBarHUD.h
//  状态栏指示器
//
//  Created by 杜新元 on 16/4/16.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DXYStatusBarHUD : NSObject

/** 显示成功信息 */
+ (void)showSuccess:(NSString *)message;

/** 显示失败信息 */
+ (void)showError:(NSString *)message;

/** 显示加载信息 */
+ (void)showLoading:(NSString *)message;

/** 隐藏 */
+ (void)hide;

/** 显示普通信息 传UIImage而不是NSString是考虑到通用性 图片不一定是在本地的 可能来自网络 */
+ (void)showMessage:(NSString *)message image:(UIImage *)image;

/** 显示普通信息 */
+ (void)showMessage:(NSString *)message;
@end
