//
//  AppDelegate.m
//  CalfLoan
//
//  Created by 周结兵 on 2017/3/23.
//  Copyright © 2017年 ShangHaiHongLu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "XNSDLoanHomePageViewController.h"
#import "XNSDDiscoveryHomePageViewController.h"
#import "XNSDMessageHomePageViewController.h"
#import "XNSDMeHomePageViewController.h"
#import "BaseNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    
    
    UINavigationController *foundNav = [[UINavigationController alloc] initWithRootViewController:[[XNSDDiscoveryHomePageViewController alloc] init]];
    
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"发现" image:[UIImage imageNamed:@"xnsd_tabar_discovery_nomal"] selectedImage:[UIImage imageNamed:@"xnsd_tabar_discovery_selected"]];
    foundNav.tabBarItem = item1;
    
    UINavigationController *loanNav = [[UINavigationController alloc] initWithRootViewController:[[XNSDLoanHomePageViewController alloc] init]];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"借款" image:[UIImage imageNamed:@"xnsd_tabar_loan_normal"] selectedImage:[[UIImage imageNamed:@"xnsd_tabar_loan_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    loanNav.tabBarItem = item2;
    
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:[[XNSDMessageHomePageViewController alloc] init]];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"消息" image:[UIImage imageNamed:@"xnsd_tabar_message_nomal"] selectedImage:[[UIImage imageNamed:@"xnsd_tabar_message_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    messageNav.tabBarItem = item3;
    
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:[[XNSDMeHomePageViewController alloc] init]];
    UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"xnsd_tabar_me_nomal"] selectedImage:[UIImage imageNamed:@"xnsd_tabar_me_selected"]];
    meNav.tabBarItem = item4;
    
    tabBar.viewControllers = @[loanNav, foundNav, messageNav, meNav];
    tabBar.tabBar.tintColor = [UIColor colorWithRed:255.0/255.0 green:147.0/255.0 blue:0.0/255.0 alpha:1];
    self.window.rootViewController = tabBar;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
