//
//  UIDevice+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIDevice (JVAddons)

#pragma mark - Device helpers

/**
 *  Gets device model name
 *
 *  @return an NSString with the device model name
 */
+ (NSString *)getDeviceModelName;


/**
 *  Gets the device version number
 *
 *  @return an NSString with the device version number
 */
+ (NSString *)getDeviceVersionNumber;

@end
