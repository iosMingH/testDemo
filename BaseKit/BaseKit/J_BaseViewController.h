//
//  J_BaseViewController.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define JayLayPush(a,b) [J_BaseViewController J_layzePushViewController:a animated:b];

typedef void(^J_BaseViewControllerBlock)(_Nullable id response);

@interface J_BaseViewController : UIViewController

@property (nonatomic ,copy) J_BaseViewControllerBlock Block;//回传
@property (nonatomic ,strong) id UserInfo; //传参
@property (nonatomic ,assign) BOOL J_BaseNavHidden; //导航栏是否隐藏 、默认显示
@property (nonatomic ,strong) UIColor *J_BaseNavColor; //导航颜色

+ (void)J_layzePushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
