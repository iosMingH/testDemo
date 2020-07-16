//
//  J_DemoBackViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_DemoBackViewController.h"

@interface J_DemoBackViewController ()

@end

@implementation J_DemoBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"信息回传";
    
    UIButton *test = [[UIButton alloc]initWithFrame:CGRectMake(100, 170, 60, 60)];
    [self.view addSubview:test];
    [test setTitle:@"回传" forState:UIControlStateNormal];
    [test setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [test addTarget:self action:@selector(action_back) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)action_back{
    NSDictionary *back = @{@"test":@"123",@"hello":@"world"};
    if (self.Block) {
        self.Block(back);
    }
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
