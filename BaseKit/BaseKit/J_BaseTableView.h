//
//  J_BaseTableView.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class J_CellModel;
@class J_BaseTableViewCell;

@interface J_BaseTableView : UITableView

- (J_BaseTableViewCell *)dequeueReusableCellWithModel:(J_CellModel *)model;

@end

NS_ASSUME_NONNULL_END
