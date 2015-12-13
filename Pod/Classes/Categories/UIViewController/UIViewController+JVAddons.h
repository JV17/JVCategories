//
//  UIViewController+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIViewController (JVAddons)

#pragma mark - UIViewController helpers

/**
 Creates a singleton of an @UIViewController.
 */
+ (instancetype)sharedInstance;


/**
 *  Finds a view controller within the navigation controller
 *
 *  @param aController, the view controller to be found
 *  @param nav, the navigation controller to search for the view controller
 *
 *  @return returns a boolean if this view controller exits in the navigation controller
 */
+ (BOOL)findViewController:(Class)aController inNavigationController:(UINavigationController *)nav;

/**
 *  Gets the top view controller using native rootViewController
 *
 *  @return the top view controller in the navigation controller hierarchy
 */
+ (UIViewController *)topViewController;

/**
 *  Gets the top view controller in the navigation controller
 *
 *  @param rootViewController, the application rootController to search for
 *
 *  @return the top view controller in the navigation controller hierarchy
 */
+ (UIViewController *)topViewController:(UIViewController *)rootViewController;

@end
