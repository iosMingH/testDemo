//
//  UIViewController+J_Base.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define LayVCByClassName(a) [UIViewController layByClassName:a]

@class J_BaseViewController;

@interface UIViewController (J_Base)


+ (J_BaseViewController *)layByClassName:(NSString *)viewControllerClassName;

@end

NS_ASSUME_NONNULL_END
