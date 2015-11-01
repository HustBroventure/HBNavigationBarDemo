//
//  HBBaseViewController.m
//  HBNavigationBarDemo
//
//  Created by wangfeng on 15/10/29.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import "HBBaseViewController.h"

@interface HBBaseViewController ()

@end

@implementation HBBaseViewController

#pragma mark - vc-life-circle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:218.0/255 green:218.0/255 blue:218.0/255 alpha:1];
    if (!self.navigationController) {
        return;
    }
    [self loadCustomNavigationBar];
    
    if (self.navigationController.viewControllers.count >1) {
        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
        [self loadBackBarItem];
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}
#pragma mark - public methords
-(void)loadCustomNavigationBar
{
    if (self.naviBar) {
        return;
    }
    UINavigationBar* naviBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,64)];
    naviBar.translucent = NO;
    naviBar.barTintColor = [UIColor colorWithRed:60.0/255 green:178.0/255 blue:173.0/255 alpha:1];

    self.naviBar = naviBar;
    UIColor * color = [UIColor whiteColor];
    NSDictionary * dict = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    naviBar.titleTextAttributes = dict;
    [self.view addSubview:naviBar];
}
-(void)loadBackBarItem
{
    UINavigationItem* naviItem = [[UINavigationItem alloc]init];
    naviItem.leftBarButtonItem= [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    naviItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
        // naviItem.title = @"111";
    naviItem.leftItemsSupplementBackButton = YES;

    [self.naviBar pushNavigationItem:naviItem animated:NO];
 
}
#pragma mark - private-tools methords

#pragma mark - property-setter-getter


#pragma mark - event methords
-(void)backClick
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - delegate methords

@end
