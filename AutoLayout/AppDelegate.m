//
//  AppDelegate.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/9.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "AppDelegate.h"
#import "VCComon.h"
#import "VCTopBottom.h"
#import "VCXY.h"
#import "VCLeftRight.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UITabBarController *tabController = [[UITabBarController alloc]init];
    VCComon *common = [[VCComon alloc]init];
    common.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"自定义类" image:nil selectedImage:nil];
    VCTopBottom *topBottom = [[VCTopBottom alloc]init];
    topBottom.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"上下对齐" image:nil tag:0];
    VCXY *xy = [[VCXY alloc]init];
    xy.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"XY对齐" image:nil selectedImage:nil];
    VCLeftRight *leftRight = [[VCLeftRight alloc]init];
    leftRight.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"左右对齐" image:nil selectedImage:nil];
    tabController.viewControllers = @[common, topBottom, xy, leftRight];
    self.window.rootViewController = tabController;
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
