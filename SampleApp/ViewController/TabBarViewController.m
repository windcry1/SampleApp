//
//  TabBarViewController.m
//  SampleApp
//
//  Created by 俞昊 on 2021/4/14.
//

#import "TabBarViewController.h"
#import "ViewController.h"

@implementation TabBarViewController

- (void)viewDidLoad
{
    ViewController *vc = [[ViewController alloc] initWithColor:[UIColor purpleColor]];
    UINavigationController *vc1 = [[UINavigationController alloc] initWithRootViewController:vc];
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;
    [vc1.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],
    } forState:UIControlStateNormal];
    vc1.tabBarItem.title = @"写着玩的";
    vc.index = 1;
    [self addChildViewController:vc1];
    ViewController *vc2 = [[ViewController alloc] initWithColor:[UIColor whiteColor]];
    [vc2.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],
    } forState:UIControlStateNormal];
    vc2.tabBarItem.title = @"写着看的";
    vc2.index = 2;
    [self addChildViewController:vc2];
    ViewController *vc3 = [[ViewController alloc] initWithColor:[UIColor orangeColor]];
    [vc3.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],
    } forState:UIControlStateNormal];
    vc3.index = 3;
    vc3.tabBarItem.title = @"写着看的";
    [self addChildViewController:vc3];
    ViewController *vc4 = [[ViewController alloc] initWithColor:[UIColor blackColor]];
    [vc4.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14],
    } forState:UIControlStateNormal];
    vc4.tabBarItem.title = @"写着看的";
    vc4.index = 4;
    [self addChildViewController:vc4];
}



@end
