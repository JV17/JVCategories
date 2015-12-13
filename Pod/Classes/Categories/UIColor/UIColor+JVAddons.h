//
//  UIColor+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIColor (JVAddons)

#pragma mark - UIColor helpers

/**
 *  Gets the UIColor from a hex string
 *
 *  @param stringToConver, the string containing the hex color value
 *
 *  @return a UIColor from the hex color string
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;


/**
 *  Gets the UIColor from a RGBHex
 *
 *  @param hex, the UInt32 containing the RGBHex value
 *
 *  @return a UIColor from the RGBHex value
 */
+ (UIColor *)colorWithRGBHex:(UInt32)hex;

@end
