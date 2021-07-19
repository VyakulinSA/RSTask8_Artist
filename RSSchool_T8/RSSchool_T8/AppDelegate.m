//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Вякулин Сергей on 17.07.2021.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    

    FirstViewController *rootVC = storyboard.instantiateInitialViewController;
    self.window.rootViewController = rootVC;

//    self.window = window;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
