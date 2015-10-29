//
//  HBBaseViewController.h
//  HBNavigationBarDemo
//
//  Created by wangfeng on 15/10/29.
//  Copyright (c) 2015年 HustBroventure. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HBBaseViewController : UIViewController
@property (nonatomic, strong) UINavigationBar* naviBar;
-(void)loadCustomNavigationBar;
@end
