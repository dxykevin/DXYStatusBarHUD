# DXYStatusBarHUD
一个简单的状态栏指示器

## 显示成功信息
```objc
    [DXYStatusBarHUD showSuccess:@"加载成功"];
```

## 显示失败信息
```objc
    [DXYStatusBarHUD showError:@"加载失败"];
```

## 显示加载信息
```objc
    [DXYStatusBarHUD showLoading:@"正在加载中..."];
```

## 显示隐藏信息
```objc
    [DXYStatusBarHUD hide];
```
```objc
传的是UIImage参数
[DXYStatusBarHUD showMessage:@"自定义" image:nil];
```