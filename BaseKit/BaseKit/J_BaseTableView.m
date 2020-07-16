//
//  J_BaseTableView.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_BaseTableView.h"
#import "J_CellModel.h"
#import "J_BaseTableViewCell.h"

@implementation J_BaseTableView


- (UITableViewCell *)dequeueReusableCellWithModel:(J_CellModel *)model{
    if (model == nil) {
        return nil;
    }
    model.result = (model.result.length > 0 )?model.result:@"result";
    model.className = (model.className.length > 0)?model.className:@"UITableViewCell";
    J_BaseTableViewCell *cell = [self dequeueReusableCellWithIdentifier:model.result];
    if (cell == nil) {
        cell = [[NSClassFromString(model.className) alloc]initWithStyle:0 reuseIdentifier:model.result];
        cell.selectionStyle = 0;
    }
    cell.data = model.data;
    return cell;
}

@end
