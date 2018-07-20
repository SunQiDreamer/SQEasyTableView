//
//  SQItemCell.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年 ----. All rights reserved.
//

#import "SQItemCell.h"
#import "SQItemModel.h"

@interface SQItemCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
//@property (nonatomic, copy) void (^event)(NSDictionary *, NSString *);
@end

@implementation SQItemCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)customViewWithData:(id<SQModelProtocol>)data {
    SQItemModel *model = (SQItemModel *)data;
    
    self.titleLabel.text = model.title;
    self.subTitleLabel.text = model.subTitle;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 可以任选一种事件传递方式，推荐Response Chain，传递事件的字符串这里hard code，偷懒了，可以抽取一个文件写成字符串常量
//    if (self.event) {
//        self.event(@{}, @"SQItemEvent");
//    }
    
    [self routerEventWithName:@"SQItemEvent" userInfo:@{}];
    
}

//- (void)handleEvent:(void (^)(NSDictionary *, NSString *))event {
//    self.event = event;
//}

@end
