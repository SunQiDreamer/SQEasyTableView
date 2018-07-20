//
//  SQBaseViewController.m
//  TableViewDemo
//
//  Created by 孙琦 on 2018/7/19.
//  Copyright © 2018年 sunqi. All rights reserved.
//

#import "SQBaseTableViewController.h"
#import "SQViewProtocol.h"
#import <ReactiveCocoa.h>
#import <MJRefresh.h>

@interface SQBaseTableViewController ()

@property (nonatomic) NSInteger currentIndex;
@end

@implementation SQBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setRefreshEnable:NO];
    [self setLoadMoreEnable:NO];
}

#pragma mark -
// 刷新操作，子类可以重写但是必须调用[super refresh]方法
- (void)refresh {
    self.currentIndex = 0;
}

// 加载更多操作，子类可以重写但是必须调用[super loadMore]方法
- (void)loadMore {
    self.currentIndex++;
}

#pragma mark -
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.viewModel numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRowsInSection:section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.viewModel heightAtIndexPath:indexPath];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<SQModelProtocol> model = [self.viewModel modelAtIndexPath:indexPath];
    id<SQViewProtocol> cell = [tableView dequeueReusableCellWithIdentifier:model.identifier forIndexPath:indexPath];
    [cell customViewWithData:model];

    return (UITableViewCell *)cell;
}

#pragma mark -
- (void)setViewModel:(id<SQViewModelProtocol>)viewModel {
    _viewModel = viewModel;
    @weakify(self);
    [_viewModel.refreshUISubject subscribeNext:^(id x) {
        @strongify(self);
        [self.tableView reloadData];
        [self.tableView.mj_header endRefreshing];
        [self.tableView.mj_footer endRefreshing];
    }];
}

- (void)setRefreshEnable:(BOOL)refreshEnable {
    if (refreshEnable) {
        @weakify(self);
        self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            @strongify(self);
            [self refresh];
        }];
    }
}

- (void)setLoadMoreEnable:(BOOL)loadMoreEnable {
    if (loadMoreEnable) {
        @weakify(self);
        self.tableView.mj_footer = [MJRefreshAutoFooter footerWithRefreshingBlock:^{
           @strongify(self);
            [self loadMore];
        }];
    }
}

- (void)setCurrentIndex:(NSInteger)currentIndex {
    _currentIndex = currentIndex;
    self.viewModel.currentIndex = currentIndex;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
