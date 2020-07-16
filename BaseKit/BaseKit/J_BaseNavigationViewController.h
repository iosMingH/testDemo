//
//  J_BaseNavigationViewController.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface J_BaseNavigationViewController : UINavigationController

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
