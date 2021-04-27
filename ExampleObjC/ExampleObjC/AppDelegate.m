//
//  AppDelegate.m
//  ExampleObjC
//
//  Created by Игорь Пенкин on 25.03.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"App did finish launching with options.");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"App will resign active.");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"App did become active.");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"App did enter background.");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"App will enter foreground.");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"App will terminate.");
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    NSLog(@"App is connecting to scene session.");
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    NSLog(@"App did discard scene session.");
}


@end
