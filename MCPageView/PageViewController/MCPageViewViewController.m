//
//  MCPageViewViewController.m
//  QQFoundation
//
//  Created by qinmuqiao on 2018/9/19.
//  Copyright © 2018年 慕纯. All rights reserved.
//

#import "MCPageViewViewController.h"
#import "MCPageView.h"
#import "MCPageViewSub1ViewController.h"
#import "MCPageViewSub2ViewController.h"
#import "MCPageViewSub3ViewController.h"

@interface MCPageViewViewController ()
@property (nonatomic , strong) MCPageView * PageView;
@end

@implementation MCPageViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent = NO;
    self.title = @"DEMO";
    NSMutableArray *titles = [NSMutableArray array];
    NSMutableArray *controllers = [NSMutableArray array];
    [controllers addObject:[MCPageViewSub1ViewController new]];
    [titles addObject:@"标题一"];

    [controllers addObject:[MCPageViewSub2ViewController new]];
    [titles addObject:@"标题二"];
    [controllers addObject:[MCPageViewSub3ViewController new]];
    [titles addObject:@"标题三"];

    self.PageView = [[MCPageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height) titles:titles controllers:controllers];
    self.PageView.titleButtonWidth = 60;
    self.PageView.titleViewHeight = 40;
    self.PageView.selectTitleFont = [UIFont boldSystemFontOfSize:16];
    self.PageView.defaultTitleFont = [UIFont boldSystemFontOfSize:16];
    self.PageView.defaultTitleColor = [UIColor redColor];
    self.PageView.selectTitleColor = [UIColor purpleColor];
    [self.PageView setBadgeWithIndex:3 badge:0];
    [self.PageView setBadgeWithIndex:1 badge:58];
    [self.PageView setBadgeWithIndex:5 badge:-1];
    [self.PageView setBadgeWithIndex:2 badge:1000];
    [self.view addSubview:self.PageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
