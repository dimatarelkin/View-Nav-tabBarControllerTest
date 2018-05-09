//
//  AppDelegate.m
//  tabBarViewController_test
//
//  Created by Dmitriy Tarelkin on 9/5/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import "NavigationFVC.h"
#import "TabBarClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//***** ViewControllers *****
    ViewController* viewController= [[ViewController alloc] init];
    [viewController setTitle:@"VIEW_CONTROLLERS"];
    
//***** NSvigationControllers with BarButton *****
    NavigationFVC* NavVC = [[NavigationFVC alloc] init];
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:NavVC];
    [navController setTitle:@"NAV_CONTROLLERS"];

//***** TabBarController *****
    //putting controllers to array
    NSArray* vcArray = [NSArray arrayWithObjects:viewController,navController, nil];

    TabBarClass* tabBarVC = [[TabBarClass alloc] init];
    tabBarVC.viewControllers = vcArray;
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
   
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
