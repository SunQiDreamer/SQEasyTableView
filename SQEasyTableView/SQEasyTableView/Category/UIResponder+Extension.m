//
//  UIResponder+Extension.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import "UIResponder+Extension.h"

@implementation UIResponder (Extension)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

@end
