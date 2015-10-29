//
//  ViewController.m
//  HBNavigationBarDemo
//
//  Created by wangfeng on 15/10/29.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
@interface ViewController ()

@end

@implementation ViewController

#pragma mark - vc-life-circle
- (void)viewDidLoad
{
    [super viewDidLoad];
     NSLog(@"111%s",__func__);
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
        //[UIApplication sharedApplication].statusBarStyle = Uis;
    NSLog(@"111%s",__func__);

}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"111%s",__func__);

}
-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"111%s",__func__);

    [super viewDidDisappear:animated];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"111%s",__func__);
}

#pragma mark - private-tools methords
- (void)initData
{
    
}
#pragma mark - property-setter-getter


#pragma mark - event methords

- (IBAction)present:(id)sender {
    
    [self presentViewController:[ViewController2 new] animated:YES completion:^{
         NSLog(@"block %s",__func__);
    }];
    NSLog(@"behind %s",__func__);
}

#pragma mark - delegate methords


@end
