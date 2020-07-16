//
//  J_DemoViewController.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_DemoViewController.h"
#import "J_DemoHidNavViewController.h"

@interface J_DemoViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSArray *_rowList;
    J_BaseTableView *_tableView;
}

@end

@implementation J_DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    J_CellModel *navHid = [J_CellModel new];
    navHid.data = @{@"title":@"导航栏不显示",@"vc":@"J_DemoHidNavViewController"};
    navHid.className = @"DemoTestTableViewCell";
    
    J_CellModel *navshow = [J_CellModel new];
    navshow.data = @{@"title":@"导航栏显示",@"vc":@"J_DemoShowNavBarViewController"};
    navshow.className = @"DemoTestTableViewCell";
    
    J_CellModel *ginseng = [J_CellModel new];
    ginseng.data = @{@"title":@"往下级传参",@"vc":@"J_DemoUserInfoViewController",@"userInfo":@{@"test":@"123"}};
    ginseng.className = @"DemoTestTableViewCell";
    
    J_CellModel *ginsengBack = [J_CellModel new];
    ginsengBack.data = @{@"title":@"回传",@"vc":@"J_DemoBackViewController"};
    ginsengBack.className = @"DemoTestTableViewCell";
    
    
    _rowList = @[navHid,navshow,ginseng,ginsengBack];
    
    _tableView = [[J_BaseTableView alloc]initWithFrame:self.view.bounds style:0];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = CGRectGetWidth(self.view.bounds)*0.429;
    _tableView.sectionFooterHeight = 0;
    _tableView.sectionHeaderHeight = 0;
    _tableView.estimatedSectionFooterHeight = 0;
    _tableView.estimatedSectionHeaderHeight = 0;
    _tableView.estimatedRowHeight = 0;
    _tableView.tableFooterView = [UIView new];
    _tableView.separatorStyle = 0;
    
    _tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, DV_Width, 0.1)];
    
    
}

#pragma mark UITableViewDelegate&UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _rowList.count;
}

- (J_BaseTableViewCell *)tableView:(J_BaseTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    J_BaseTableViewCell *cell = [tableView dequeueReusableCellWithModel:_rowList[indexPath.row]];
    WeakSelf;
    cell.Block = ^(id  _Nullable response) {
        [weakSelf update:response];
    };
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    J_CellModel *modle = _rowList[indexPath.row];
    return modle.cellHeigh;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}


#pragma mark update
- (void)update:(NSDictionary *)response{
    
    
    NSMutableString *message = [[NSMutableString alloc]init];
    if (response) {
        NSArray *keys = [response allKeys];
        for (NSString *key in keys) {
            [message appendFormat:@"%@:%@\n",key,[response objectForKey:key]];
        }
    }
    
    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"参数信息" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });
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
