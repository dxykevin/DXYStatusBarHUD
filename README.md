# DXYStatusBarHUD
一个简单的状态栏指示器

## 显示成功信息
'''objc
    [DXYStatusBarHUD showSuccess:@"加载成功"];
'''

## 显示失败信息
...objc
    [DXYStatusBarHUD showError:@"加载失败"];
...

## 显示加载信息
...objc
    [DXYStatusBarHUD showLoading:@"正在加载中..."];
...

## 显示隐藏信息
...objc
    [DXYStatusBarHUD hide];
...

```objc
Base                        Custom
MJRefresh.bundle            MJRefresh.h
MJRefreshConst.h            MJRefreshConst.m
UIScrollView+MJExtension.h  UIScrollView+MJExtension.m
UIScrollView+MJRefresh.h    UIScrollView+MJRefresh.m
UIView+MJExtension.h        UIView+MJExtension.m
```