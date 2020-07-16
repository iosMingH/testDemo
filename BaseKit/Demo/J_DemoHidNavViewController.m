//
//  J_DemoHidNavViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_DemoHidNavViewController.h"

@interface J_DemoHidNavViewController ()

@end

@implementation J_DemoHidNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //隐藏导航栏
    self.J_BaseNavHidden = YES;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController popViewControllerAnimated:YES];
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
