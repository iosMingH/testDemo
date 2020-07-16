//
//  J_CellModel.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "J_CellModel.h"
#import <objc/runtime.h>

@implementation J_CellModel

- (instancetype)init{
    self = [super init];
    if (self) {
        _cellHeigh = 44;
        _className = @"J_BaseTableViewCell";
    }
    return self;
}


- (id)mutableCopyWithZone:(NSZone *)zone{
    J_CellModel *model = [[J_CellModel allocWithZone:zone] init];
    [[[self class] getPropertyNameList:[model class]] enumerateObjectsUsingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [model setValue:[self valueForKey:obj] forKey:obj];
    }];
    return model;
}


+ (NSArray *)getPropertyNameList:(Class)cls {
    NSMutableArray *propertyNameListArray = [NSMutableArray array];
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList(cls, &count);
    for (NSInteger i = 0 ; i < count; i ++) {
        const char *propertyCharName = property_getName(properties[i]);//c的字符串
        NSString *propertyOCName = [NSString stringWithFormat:@"%s",propertyCharName];//转化成oc 字符串
        [propertyNameListArray addObject:propertyOCName];
    }
    NSArray *dataArray = [NSArray arrayWithArray:propertyNameListArray];
    return dataArray;
}

- (NSString *)result{
    return _result.length?_result:_className.length?_className:@"UITableViewCell";
}

@end
