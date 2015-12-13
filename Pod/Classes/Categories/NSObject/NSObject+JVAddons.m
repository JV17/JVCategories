//
//  NSObject+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "NSObject+JVAddons.h"


@implementation NSObject (JVAddons)

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}


#pragma mark - Block helpers

+ (void)performBlockOnMainThread:(void(^)(void))block afterDelay:(NSTimeInterval)delay
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC),
                   dispatch_get_main_queue(), ^{
                       block();
                   });
}


+ (void)performBlockInBackground:(void(^)(void))block afterDelay:(NSTimeInterval)delay
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC),
                   dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                       block();
                   });
}


+ (void)performBlockOnMainThreadWithoutDeadlocking:(void(^)(void))block
{
    if ([NSThread isMainThread])
    {
        block();
    }
    else
    {
        dispatch_sync(dispatch_get_main_queue(), block);
    }
}

@end
