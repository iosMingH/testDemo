//
//  UIViewController+J_Base.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "UIViewController+J_Base.h"


@implementation UIViewController (J_Base)

+ (UIViewController *)layByClassName:(NSString *)viewControllerClassName{
    return [[NSClassFromString(viewControllerClassName)alloc]init];
}

@end
