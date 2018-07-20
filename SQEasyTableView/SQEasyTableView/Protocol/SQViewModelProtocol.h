//
//  SQViewModelProtocol.h

//
//  Created by sunqi on 2018/4/11.
//  Copyright © 2018年  Service. All rights reserved.
//

#import "SQModelProtocol.h"
#import <ReactiveCocoa.h>

@protocol SQViewModelProtocol <NSObject>
@optional
@property (nonatomic) NSInteger currentIndex;
- (NSInteger)numberOfSections;
- (CGFloat)heightAtIndexPath:(NSIndexPath *)indexPath;
- (void)loadData;

@required
@property (nonatomic, copy) NSArray *dataSource;
@property (nonatomic, strong) RACSubject *refreshUISubject;
- (id<SQModelProtocol>)modelAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;

@end
