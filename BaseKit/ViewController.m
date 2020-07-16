//
//  ViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "ViewController.h"
#import "J_BaseNavigationViewController.h"
#import "J_DemoViewController.h"
#import "SVProgressHUD.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *list = [[NSMutableArray alloc]init];
    for (int i = 0; i<3; i++) {
        UIViewController *vc = [[J_DemoViewController alloc]init];
        
        J_BaseNavigationViewController *nav = [[J_BaseNavigationViewController alloc]initWithRootViewController:vc];
        nav.tabBarItem.title = [NSString stringWithFormat:@"title%d",i];
        [list addObject:nav];
    }
    self.viewControllers = list;
    //好好测测吧
    //怎么会一直这样子能
    //珍请
    //怎么会这样啊 哈哈哈
    
    // Do any additional setup after loading the view.
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 100, 100)];
//    [self.view addSubview:btn];
//    [btn setTitle:@"test" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(action_test) forControlEvents:UIControlEventTouchUpInside];
}
//
//- (void)action_test{
//    [SVProgressHUD show];
//    [SVProgressHUD dismissWithDelay:2.0f];
//}


@end
