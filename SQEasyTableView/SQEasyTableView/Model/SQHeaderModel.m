//
//  SQHeaderModel.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import "SQHeaderModel.h"

@implementation SQHeaderModel

- (NSString *)title {
    return @"headerTitle";
}

- (NSString *)subTitle {
    return @"headerSubTitle";
}


#pragma mark -
- (NSString *)identifier {
    return @"SQHeaderCell";
}

- (CGFloat)height {
    return 88.f;
}

@end
