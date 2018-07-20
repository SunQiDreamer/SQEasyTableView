//
//  SQitemModel.h
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQModelProtocol.h"

@interface SQItemModel : NSObject <SQModelProtocol>

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;
@end
