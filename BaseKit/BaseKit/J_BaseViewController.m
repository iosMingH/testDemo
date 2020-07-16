//
//  J_BaseViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_BaseViewController.h"

@interface J_BaseViewController ()

@end

@implementation J_BaseViewController

- (void)viewWillAppear:(BOOL)animated{
    
    if (self.parentViewController.parentViewController.parentViewController) {
        return;
    }
    if (self.navigationController.navigationBarHidden != self.J_BaseNavHidden) {
        [self.navigationController setNavigationBarHidden:self.J_BaseNavHidden animated:animated];
    }
    if (self.navigationController.navigationBar.barTintColor != self.J_BaseNavColor) {
        [self.navigationController.navigationBar setBarTintColor:self.J_BaseNavColor];
    }
    [super viewWillAppear:animated];

}


+ (void)J_layzePushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    UIViewController *vc = [self getCurrentViewController];
    if (vc.navigationController) {
        [vc.navigationController pushViewController:viewController animated:animated];
    }
}

#pragma mark - 获取当前控制器
+ (UIViewController *)getCurrentViewController {
    UIViewController *result = nil;
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    //app默认windowLevel是UIWindowLevelNormal，如果不是，找到它
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                window = tmpWin;
                break;
            }
        }
    }
    id nextResponder = nil;
    UIViewController *appRootVC = window.rootViewController;
    if (appRootVC.presentedViewController) {
        nextResponder = appRootVC.presentedViewController;
    }else{
        nextResponder = appRootVC;
    }
    if ([nextResponder isKindOfClass:[UITabBarController class]]){
        UITabBarController * tabbar = (UITabBarController *)nextResponder;
        UINavigationController * nav = (UINavigationController *)tabbar.viewControllers[tabbar.selectedIndex];

        result = nav.childViewControllers.lastObject;
    }else if ([nextResponder isKindOfClass:[UINavigationController class]]){
        UIViewController * nav = (UIViewController *)nextResponder;
        result = nav.childViewControllers.lastObject;
    }else{
        result = nextResponder;
    }
    return result;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
