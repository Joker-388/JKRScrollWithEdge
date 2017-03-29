//
//  AppDelegate.m
//  JKRScrollDemo
//
//  Created by tronsis_ios on 17/3/23.
//  Copyright © 2017年 tronsis_ios. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+JKRRootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self jkr_configRootViewController];
    return YES;
}

@end
