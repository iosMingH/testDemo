//
//  J_BaseNavigationViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_BaseNavigationViewController.h"

@interface J_BaseNavigationViewController ()

@end

@implementation J_BaseNavigationViewController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController{
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        UIImage *back = [UIImage imageNamed:@"J_baseBack"];
        [UINavigationBar appearance].backIndicatorTransitionMaskImage = [back imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [UINavigationBar appearance].backIndicatorImage = [back imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, -2)
                                                             forBarMetrics:UIBarMetricsDefault];
        [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName :[UIColor blackColor],
                                                              NSFontAttributeName :[UIFont boldSystemFontOfSize:18]}];
    }
    return self;
    
}

- (UIModalPresentationStyle)modalPresentationStyle{
    return 0;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = (self.viewControllers.count>0)?YES:NO;
    [super pushViewController:viewController animated:animated];
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
