//
//  AppDelegate.m
//  SparkChainDemo
//
//  Created by pcfang on 19.5.23.
//

#import "AppDelegate.h"
#import "SparkViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow * window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    [window makeKeyAndVisible];
    window.backgroundColor = [UIColor whiteColor];
    self.window = window;
    
    SparkViewController * sparkVC = [[SparkViewController alloc] init];
    window.rootViewController = [[UINavigationController alloc] initWithRootViewController:sparkVC];
    return YES;
}

@end
