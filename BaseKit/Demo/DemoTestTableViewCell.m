//
//  DemoTestTableViewCell.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "DemoTestTableViewCell.h"

@interface DemoTestTableViewCell (){
    NSDictionary *_Data;
}

@end

@implementation DemoTestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setData:(id)data{
    _Data = data;
    self.textLabel.text = data[@"title"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        J_BaseViewController *vc = LayVCByClassName(_Data[@"vc"]);
        vc.UserInfo = _Data[@"userInfo"];
        vc.Block = ^(id  _Nullable response) {
            if (self.Block) {
                self.Block(response);
            }
        };
        JayLayPush(vc, YES);
    }
    // Configure the view for the selected state
}

@end
