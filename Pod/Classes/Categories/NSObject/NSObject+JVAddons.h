//
//  NSObject+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <Foundation/Foundation.h>


@interface NSObject (JVAddons)

/**
 Creates a singleton of a @NSObject.
 */
+ (instancetype)sharedInstance;


#pragma mark - Block helpers

/**
 Performs provided block on the main thread with delay.
 
 @param block
    The block of code to be excuted in the main thread.
 @param delay
    The delay to excute this block of code.
 */
+ (void)performBlockOnMainThread:(void(^)(void))block afterDelay:(NSTimeInterval)delay;


/**
 Performs provided block on the background thread with delay.
 
 @param block
    The block of code to be excuted in the background thread.
 @param delay
    The delay to excute this block of code.
 */
+ (void)performBlockInBackground:(void(^)(void))block afterDelay:(NSTimeInterval)delay;


/**
 Performs provided block on the main thread without dead locking.
 
 @param block
    The block of code to be excuted in the main thread.
 */
+ (void)performBlockOnMainThreadWithoutDeadlocking:(void(^)(void))block;

@end
