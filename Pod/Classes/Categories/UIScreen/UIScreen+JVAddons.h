//
//  UIScreen+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIScreen (JVAddons)

#pragma mark - Screen helpers

/**
 *  Gets the screen size regarless of the orientation and iOS version
 *
 *  @return the screen size width and height of the device
 */
+ (CGSize)getScreenSize;


/**
 *  Gets the screen orientation of the device
 *
 *  @return the current screen orientation
 */
+ (UIInterfaceOrientation) getScreenOrientation;

@end
