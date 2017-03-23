//
//  ViewController.m
//  CalfLoan
//
//  Created by 周结兵 on 2017/3/23.
//  Copyright © 2017年 ShangHaiHongLu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - ♻️life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self xnsd_initData];
    [self xnsd_initSubViews];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
}

#pragma mark - 🔒private

- (void)xnsd_initData
{
    self.title = @"首页";
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)xnsd_initSubViews
{
    
}

#pragma mark - 🔄overwrite

#pragma mark - 🚪public

#pragma mark - 🍐delegate

#pragma mark - ☎️notification

#pragma mark - 🎬event response

#pragma mark - ☸getter and setter


@end
