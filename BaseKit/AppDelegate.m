//
//  AppDelegate.m
//  BaseKit
//
//  Created by 杰克 on 2020/3/19.
//  Copyright © 2020 Jay. All rights reserved.
//

#import "AppDelegate.h"
#import "SceneDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //    [UIScene ]
    return YES;
}

- (UIWindow *)window{
    
    if (@available(iOS 13.0, *)) {
        UIWindow *window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
        return window;
        
    }else{
        if (_window == nil) {
            _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
            _window.backgroundColor = [UIColor whiteColor];
            _window.rootViewController = [[NSClassFromString(@"ViewController")alloc]init];
            [_window makeKeyAndVisible];
        }
        return _window;
    }
    return nil;
    
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options  API_AVAILABLE(ios(13.0)){
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    if (@available(iOS 13.0, *)) {
        return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
    } else {
        // Fallback on earlier versions
        return nil;
    }
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions  API_AVAILABLE(ios(13.0)){
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
