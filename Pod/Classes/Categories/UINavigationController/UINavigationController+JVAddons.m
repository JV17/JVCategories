//
//  UINavigationController+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UINavigationController+JVAddons.h"


@implementation UINavigationController (JVAddons)

#pragma mark - NavigationController helpers

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}


+ (void)makeNavigationControllerTransparent:(UINavigationController *)navigationController
{
    // make the navigation bar transparent
    [navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    navigationController.navigationBar.shadowImage = [UIImage new];
    navigationController.navigationBar.translucent = YES;
    navigationController.view.backgroundColor = [UIColor clearColor];
    navigationController.navigationBar.backgroundColor = [UIColor clearColor];
}

@end
