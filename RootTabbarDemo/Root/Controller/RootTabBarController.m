//
//  RootTabBarController.m
//  RootTabbarDemo
//
//  Created by 光 on 16/9/14.
//  Copyright © 2016年 光. All rights reserved.
//

#import "RootTabBarController.h"
#import "HomeViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "MyViewController.h"


@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self setUpAllChildViewController];
    
}

/**
 *  添加所有的 tabbar 子控制器
 */
- (void)setUpAllChildViewController
{
    // 1.创建子控制器
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
    FourViewController *fourVC = [[FourViewController alloc] init];
    MyViewController *MyVC = [[MyViewController alloc] init];
    
    // 2.添加子控制器
    [self addOneChildViewController:homeVC withImageName:@"homeImgName" withTitle:@"HomeName"];
    [self addOneChildViewController:secondVC withImageName:@"secondImgName" withTitle:@"secondName"];
    [self addOneChildViewController:threeVC withImageName:@"threeImgName" withTitle:@"threeName"];
    [self addOneChildViewController:fourVC withImageName:@"fourImgName" withTitle:@"fourName"];
    [self addOneChildViewController:MyVC withImageName:@"myImgName" withTitle:@"myName"];
}

/**
 *  添加一个子控制器
 *
 *  @param title  模块标题
 */
- (void)addOneChildViewController:(UIViewController *)viewController withImageName:(NSString *)imageName withTitle:(NSString *)title
{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    nav.tabBarItem.image = [UIImage imageNamed:imageName];
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"..."] forBarMetrics:UIBarMetricsDefault];
    
    viewController.navigationItem.title = title;
    nav.title = title;
    
    [self addChildViewController:nav];
    
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
