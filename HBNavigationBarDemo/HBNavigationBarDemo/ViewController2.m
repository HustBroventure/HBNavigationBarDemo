//
//  ViewController2.m
//  HBNavigationBarDemo
//
//  Created by wangfeng on 15/10/29.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.naviBar.topItem.title = @"标题";
        //self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    NSLog(@"222%s",__func__);
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(close:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}
#pragma mark - vc-life-circle

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    NSLog(@"222%s",__func__);


}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"222%s",__func__);

}
- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"222%s",__func__);

    [super viewWillDisappear:animated];

}
-(void)viewDidDisappear:(BOOL)animated
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
    NSLog(@"222%s",__func__);

    [super viewDidDisappear:animated];
}
-(void)dealloc
{
     NSLog(@"222%s",__func__);
    
}
#pragma mark - private-tools methords
- (void)initData
{
    
}
#pragma mark - property-setter-getter


#pragma mark - event methords
- (IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"222block %s",__func__);

    }];     NSLog(@"222behind %s",__func__);
}


#pragma mark - delegate methords

@end
