//
//  SQitemModel.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import "SQItemModel.h"

@implementation SQItemModel

- (NSString *)title {
    return @"itemTitle";
}

- (NSString *)subTitle {
    return @"itemSubTitle";
}

#pragma mark -
- (NSString *)identifier {
    return @"SQItemCell";
}

- (CGFloat)height {
    return 44.f;
}
@end
