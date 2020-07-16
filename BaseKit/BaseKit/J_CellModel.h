//
//  J_CellModel.h
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface J_CellModel : NSObject<NSMutableCopying>

@property (nonatomic ,copy ,nonnull) NSString *result;
@property (nonatomic ,copy ,nonnull) NSString *className;
@property (nonatomic ) CGFloat cellHeigh;
@property (nonatomic ) CGFloat sectionHeader;
@property (nonatomic ) CGFloat sectionFooter;
@property (nonatomic ,strong ,nullable) id data;

@property (nonatomic ,strong ,nullable) id headerData;
@property (nonatomic ,strong ,nullable) id footerData;

@end

NS_ASSUME_NONNULL_END
