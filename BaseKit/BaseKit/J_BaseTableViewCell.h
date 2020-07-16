//
//  J_BaseTableViewCell.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CellHandleBlock)(_Nullable id response);

@interface J_BaseTableViewCell : UITableViewCell

@property (nonatomic ,strong) id data;
@property (nonatomic ,copy) CellHandleBlock Block;

@end

NS_ASSUME_NONNULL_END
