//
//  ViewController.m
//  DXYStatusBarHUDExample
//
//  Created by 杜新元 on 16/4/16.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "DXYStatusBarHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)success:(id)sender {
    
    [DXYStatusBarHUD showSuccess:@"加载成功"];
}

- (IBAction)error:(id)sender {
    
    [DXYStatusBarHUD showError:@"加载失败"];
}

- (IBAction)loading:(id)sender {
    
    [DXYStatusBarHUD showLoading:@"正在加载中..."];
}

- (IBAction)hide:(id)sender {
    
    [DXYStatusBarHUD hide];
}

- (IBAction)message:(id)sender {
    
    [DXYStatusBarHUD showMessage:@"自定义" image:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
