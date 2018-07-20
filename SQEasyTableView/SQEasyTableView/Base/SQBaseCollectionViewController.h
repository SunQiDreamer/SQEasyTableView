//
//  SQBaseCollectionViewController.h
//  TableViewDemo
//
//  Created by 孙琦 on 2018/7/20.
//  Copyright © 2018年 sunqi. All rights reserved.
//

#import "SQRefreshProtocol.h"
#import "SQLoadMoreProtocol.h"
#import "SQViewModelProtocol.h"

@interface SQBaseCollectionViewController : UIViewController <SQRefreshProtocol, SQLoadMoreProtocol, UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic) UICollectionView *collectionView;
@property (nonatomic) id<SQViewModelProtocol> viewModel;
@end
