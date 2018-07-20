//
//  SQEventProtocol.h
//
//  Created by sunqi on 2018/4/12.
//  Copyright © 2018年  Service. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIResponder+extension.h"

@protocol SQEventProtocol <NSObject>
@optional
// 用于传递事件（identifier用于标记是哪一个事件， params为需传参数）
- (void)handleEvent:(void(^)(NSDictionary *params, NSString *identifier))event;

@end
