//
//  UINavigationController+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UINavigationController (JVAddons)

#pragma mark - NavigationController helpers

/**
 Creates a singleton of an @UINavigationController.
 */
+ (instancetype)sharedInstance;


/**
 *  Makes the navigation controller transparent
 *
 *  @param navigationController the navigation controller to make transparent
 */
+ (void)makeNavigationControllerTransparent:(UINavigationController *)navigationController;

@end
