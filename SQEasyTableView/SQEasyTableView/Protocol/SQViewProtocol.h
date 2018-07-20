//
//  SQViewProtocol.h

//
//  Created by sunqi on 2018/4/11.
//  Copyright © 2018年 Elephants . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQModelProtocol.h"
#import "SQEventProtocol.h"

@protocol SQViewProtocol <NSObject, SQEventProtocol>
- (void)customViewWithData:(id<SQModelProtocol>)data;
@end
