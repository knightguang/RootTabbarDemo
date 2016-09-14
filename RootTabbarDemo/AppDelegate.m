//
//  AppDelegate.m
//  RootTabbarDemo
//
//  Created by 光 on 16/9/14.
//  Copyright © 2016年 光. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    /**
     *  Attention
     *
     *  check out `Podfile`
     *  insure `target “DemoName” do` identify with your DemoName
     *  
     *  check out xcodeproj
     *  
     *  default no landscape left and right
     *
     *  default iOS 8.0 and later
     *
     *  default five tabbarItems
     *
     *  default no set Main Interface
     *
     *  check out `pch file`
     *
     *  default $(SRCROOT)/projectName/progject.pch
     */
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    
    RootTabBarController *rootTabBar = [[RootTabBarController alloc] init];
    self.window.rootViewController = rootTabBar;
    
    self.window.backgroundColor = [UIColor cyanColor];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
