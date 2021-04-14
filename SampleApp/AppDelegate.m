//
//  AppDelegate.m
//  SampleApp
//
//  Created by 俞昊 on 2021/4/14.
//

#import "AppDelegate.h"
#import "TabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    TabBarViewController *vc = [[TabBarViewController alloc] init];
    [self.window setRootViewController:vc];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
