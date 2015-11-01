//
//  HBTabBarViewController.m
//  HBNavigationBarDemo
//
//  Created by wangfeng on 15/10/29.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import "HBTabBarViewController.h"

@interface HBTabBarViewController ()

@end

@implementation HBTabBarViewController

#pragma mark - vc-life-circle
- (void)viewDidLoad
{
    [super viewDidLoad];
     self.tabBar.tintColor = [UIColor orangeColor];
    UITabBarItem* item1 = self.tabBar.items[0];
    item1.image = [UIImage imageNamed:@"item1"];
    
        //[self initTabBar:self.tabBar];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

#pragma mark - private-tools methords

-(void)initTabBar:(UITabBar*)tabBar
{
        // = [[UITabBarItem alloc]initWithTitle:@"动画" image:nil selectedImage:nil];

        //[tabBar setItems:@[item1]];

}
#pragma mark - property-setter-getter


#pragma mark - event methords


#pragma mark - delegate methords

@end
