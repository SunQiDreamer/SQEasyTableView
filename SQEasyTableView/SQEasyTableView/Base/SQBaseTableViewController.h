//
//  SQBaseViewController.h
//  TableViewDemo
//
//  Created by 孙琦 on 2018/7/19.
//  Copyright © 2018年 sunqi. All rights reserved.
//

#import "SQRefreshProtocol.h"
#import "SQLoadMoreProtocol.h"
#import "SQViewModelProtocol.h"

@interface SQBaseTableViewController : UIViewController <SQRefreshProtocol, SQLoadMoreProtocol, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) UITableView *tableView;
@property (nonatomic) id<SQViewModelProtocol> viewModel;

@end
