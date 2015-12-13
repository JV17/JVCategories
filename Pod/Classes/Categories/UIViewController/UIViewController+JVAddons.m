//
//  UIViewController+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIViewController+JVAddons.h"


@implementation UIViewController (JVAddons)

#pragma mark - UIViewController helpers

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}


+ (BOOL)findViewController:(Class)aController inNavigationController:(UINavigationController *)nav
{
    NSArray *viewControllersArr = nav.viewControllers;
    
    for (id vc in viewControllersArr)
    {
        if ([vc isKindOfClass:[aController class]])
        {
            return YES;
        }
    }
    
    return NO;
}


+ (UIViewController *)topViewController
{
    return [self topViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}


+ (UIViewController *)topViewController:(UIViewController *)rootViewController
{
    if (rootViewController.presentedViewController == nil)
    {
        return rootViewController;
    }
    
    if ([rootViewController.presentedViewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *navigationController = (UINavigationController *)rootViewController.presentedViewController;
        UIViewController *lastViewController = [[navigationController viewControllers] lastObject];
        
        return [self topViewController:lastViewController];
    }
    
    UIViewController *presentedViewController = (UIViewController *)rootViewController.presentedViewController;
    
    return [self topViewController:presentedViewController];
}

@end
