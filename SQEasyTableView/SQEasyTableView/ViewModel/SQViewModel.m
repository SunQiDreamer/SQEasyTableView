//
//  SQViewModel.m
//  TableViewDemo
//
//  Created by sunqi on 2018/7/16.
//  Copyright © 2018年sunqi. All rights reserved.
//

#import "SQViewModel.h"
#import "SQHeaderModel.h"
#import "SQItemModel.h"

@implementation SQViewModel
@synthesize dataSource = _dataSource;
@synthesize refreshUISubject = _refreshUISubject;

- (instancetype)init {
    if (self = [super init]) {
        _refreshUISubject = RACSubject.new;
        [self loadData];
    }
    return self;
}

- (void)loadData {
    [self loadDataWithCurrentIndex:0];
}

- (void)loadDataWithCurrentIndex:(NSInteger)currentIndex {
    NSLog(@"currentIndex:%ld", currentIndex);
    NSArray *datas = @[SQHeaderModel.new, SQItemModel.new, SQItemModel.new, SQItemModel.new];
    self.dataSource = datas;
}

- (void)setDataSource:(NSArray *)dataSource {
    _dataSource = [dataSource copy];
    
    [self.refreshUISubject sendNext:_dataSource];
}

- (void)setCurrentIndex:(NSInteger)currentIndex {
    [self loadDataWithCurrentIndex:currentIndex];
}

- (CGFloat)heightAtIndexPath:(NSIndexPath *)indexPath {
    id<SQModelProtocol> model = self.dataSource[indexPath.row];
    return model.height;
}

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (id<SQModelProtocol>)modelAtIndexPath:(NSIndexPath *)indexPath {
    return self.dataSource[indexPath.row];
}

@end
