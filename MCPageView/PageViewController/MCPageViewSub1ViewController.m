//
//  MCPageViewSub1ViewController.m
//  QQFoundation
//
//  Created by qinmuqiao on 2018/9/19.
//  Copyright © 2018年 慕纯. All rights reserved.
//

#import "MCPageViewSub1ViewController.h"
#import "MCPageViewSub2ViewController.h"
@interface MCPageViewSub1ViewController ()

@end

@implementation MCPageViewSub1ViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    UIButton *button  = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:(UIControlEventTouchUpInside)];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:button];
}
- (void)buttonClick{
    
    [self.navigationController pushViewController:[MCPageViewSub2ViewController new] animated:YES];
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
