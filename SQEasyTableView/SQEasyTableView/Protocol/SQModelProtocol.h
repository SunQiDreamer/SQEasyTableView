//
//  SQModelProtocol.h
//
//
//  Created by sunqi on 2018/4/11.
//  Copyright © 2018年 Elephants . All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SQModelProtocol <NSObject>
@optional
- (NSString *)identifier;
- (CGFloat)height;
@end
