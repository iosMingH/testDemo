//
//  J_DemoUserInfoViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_DemoUserInfoViewController.h"

@interface J_DemoUserInfoViewController ()

@end

@implementation J_DemoUserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary *info = self.UserInfo;
    NSMutableString *message = [[NSMutableString alloc]init];
    if (info) {
        NSArray *keys = [info allKeys];
        for (NSString *key in keys) {
            [message appendFormat:@"%@:%@\n",key,[info objectForKey:key]];
        }
    }
    
    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"参数信息" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
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
