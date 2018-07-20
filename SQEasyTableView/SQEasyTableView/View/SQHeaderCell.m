//
//  SQHeaderCell.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import "SQHeaderCell.h"
#import "SQHeaderModel.h"

@interface SQHeaderCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
//@property (nonatomic, copy) void (^event)(NSDictionary *, NSString *);
@end

@implementation SQHeaderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)customViewWithData:(id<SQModelProtocol>)data {
    SQHeaderModel *model = (SQHeaderModel *)data;
    
    self.titleLabel.text = model.title;
    self.subTitleLabel.text = model.subTitle;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    if (self.event) {
//        self.event(@{}, @"SQHeaderEvent");
//    }
    
    [self routerEventWithName:@"SQHeaderEvent" userInfo:@{}];
}

//- (void)handleEvent:(void (^)(NSDictionary *, NSString *))event {
//    self.event = event;
//}

@end
