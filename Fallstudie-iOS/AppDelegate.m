//
//  AppDelegate.m
//  Fallstudie-iOS
//
//  Created by Cyril Gabathuler on 13.12.11.
//  Copyright (c) 2011 Bahnhofstrasse 24, 5400 Baden. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"

#import "SecondViewController.h"

#import "FriendsViewController.h"

#import "FriendRequestsController.h"

#import "StreamViewController.h"

#import "ProfileViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"wood_tabbar"] forBarMetrics:UIBarMetricsDefault];
    
    // Override point for customization after application launch.
    UIViewController *streamController = [[StreamViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *streamNavigationController = [[UINavigationController alloc] initWithRootViewController:streamController];
    streamNavigationController.tabBarItem.image = [UIImage imageNamed:@"OrderedList"];
    
    UIViewController *profileController = [[ProfileViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *profileNavigationController = [[UINavigationController alloc] initWithRootViewController:profileController];
    profileNavigationController.tabBarItem.image = [UIImage imageNamed:@"ContactFlip"];
    
    UIViewController *friendsController = [[FriendsViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *friendsNavigationController = [[UINavigationController alloc] initWithRootViewController:friendsController];
    friendsNavigationController.tabBarItem.image = [UIImage imageNamed:@"Friends"];
    
    UIViewController *friendRequestsController = [[FriendRequestsController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *friendRequestsNavigationController = [[UINavigationController alloc] initWithRootViewController:friendRequestsController];
    friendRequestsController.tabBarItem.image = [UIImage imageNamed:@"Sort-User"];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:streamNavigationController, profileNavigationController, friendsNavigationController, friendRequestsNavigationController, nil];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
