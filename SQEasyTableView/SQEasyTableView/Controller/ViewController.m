//
//  ViewController.m
//  TableViewDemo
//
//  Created by 孙琦 on 2018/7/16.
//  Copyright © 2018年 sunqi. All rights reserved.
//

#import "ViewController.h"
#import "SQViewModel.h"
#import "SQViewProtocol.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self setRefreshEnable:YES];
    [self setLoadMoreEnable:YES];
    
    self.viewModel = SQViewModel.new;
}

//在这里处理事件
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self handleEventWithName:eventName param:userInfo];
    
    [super routerEventWithName:eventName userInfo:userInfo];
}

- (void)handleEventWithName:(NSString *)eventName param:(NSDictionary *)param {
    if ([eventName isEqualToString:@"SQHeaderEvent"]) {
        NSLog(@"~~~~~~~~~SQHeaderEvent");
    }
    
    if ([eventName isEqualToString:@"SQItemEvent"]) {
        NSLog(@"~~~~~~~~~SQItemEvent");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
