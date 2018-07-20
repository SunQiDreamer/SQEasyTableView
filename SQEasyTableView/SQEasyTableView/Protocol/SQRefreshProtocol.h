//
//  SQRefreshProtocol.h
//  TableViewDemo
//
//  Created by 孙琦 on 2018/7/19.
//  Copyright © 2018年 sunqi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SQRefreshProtocol <NSObject>

- (void)setRefreshEnable:(BOOL)refreshEnable;
- (void)refresh;
@end
