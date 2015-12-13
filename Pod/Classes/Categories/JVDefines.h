//
//  JVDefines.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#ifndef JVDefines_h
#define JVDefines_h

#include <AvailabilityMacros.h>
#import <float.h>

// detecting devices
#define IS_IPHONE_4 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )480 ) < DBL_EPSILON )
#define IS_IPHONE_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define IS_IPHONE_6 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )667 ) < DBL_EPSILON )
#define IS_IPHONE_6_PLUS ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )736 ) < DBL_EPSILON )

// detecting os versions
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

// os versions
#define iOS6_0 @"6.0"
#define iOS7_0 @"7.0"
#define iOS8_0 @"8.0"

// background threads
#define kBgThreadHigh dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)
#define kBgThreadDefault dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
#define kBgThreadLow dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0)
#define kBgThreadBackground dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)

#endif /* JVDefines_h */
