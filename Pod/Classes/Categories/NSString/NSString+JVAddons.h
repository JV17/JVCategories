//
//  NSString+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSString (JVAddons)

#pragma mark - NSString helpers

/**
 Reverse the provided string.
 
 @param str
    The string to reverse.
 
 @return
    The reversed string.
 */
+ (NSString *)reverseString:(NSString *)str;


/**
 Common suffix for string with options.
 
 @param aString
    The string to apply the suffix.
 @param mask
    The NSString compare options.
 
 @return
    The string with the common suffix.
 */
+ (NSString *)commonSuffixWithString:(NSString *)aString options:(NSStringCompareOptions)mask;


/**
 Capitalizes the first letter of the string.
 
 @param str
    The string to capitalize.
 
 @return
    The string with the first letter capitalized.
 */
+ (NSString *)startCapitalizedString:(NSString *)str;


/**
 Checks if a string contains the provided string.
 
 @param str
    The string to check if it's contained by the string.
 
 @return
    A Boolean indicating if the string contains or not the provided string.
 */
- (BOOL)stringContainsString:(NSString *)str;


/**
 Get the absolute length of a time interval as a string. Like timeIntervalToString, but without the "before" and "after" suffix.
 
 @param timeLength
    The time length.
 
 @return
    The time length as a string.
 */
- (NSString *)timeLengthToString:(NSInteger)timeLength;


/**
 Get the absolute length of a time interval as a string. Explicitly spells out only the number of days, the rest is abbreviated as hh:mm.
 
 @param timeLength
    The time Length.
 
 @return
    The time length as a string as hh:mm.
 */
- (NSString *)timeLengthToShortString:(NSInteger)timeLength;


/**
 Convert a time interval (in seconds) to a string of the form "5 days, 3 hours, 2 minutes before"
 
 @param timeInterval
    The time interval to convert.
 
 @return 
    The new time interval as a string.
 */
- (NSString *)timeIntervalToString:(NSInteger)timeInterval;

@end
