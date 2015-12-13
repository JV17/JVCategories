//
//  UIDevice+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIDevice+JVAddons.h"


static NSString *const kDeviceiPhone = @"iPhone";
static NSString *const kDeviceiPod = @"iPod Touch";
static NSString *const kDeviceiPad = @"iPad";
static NSString *const kDeviceiPhoneSimulator = @"iPhone Simulator";
static NSString *const kDeviceiPadSimulator = @"iPad Simulator";


@implementation UIDevice (JVAddons)

#pragma mark - Device helper

+ (NSString *)getDeviceModelName
{
    NSString *deviceName = @"";
    NSString *deviceModel = [[UIDevice currentDevice] model];
    
    if ([deviceModel isEqualToString:kDeviceiPhone])
    {
        deviceName = @"iPhone";
    }
    else if ([deviceModel isEqualToString:kDeviceiPod])
    {
        deviceName = @"iPod";
    }
    else if ([deviceModel isEqualToString:kDeviceiPad])
    {
        deviceName = @"iPad";
    }
    else if ([deviceModel isEqualToString:kDeviceiPhoneSimulator] || [deviceModel isEqualToString:kDeviceiPadSimulator])
    {
        deviceName = @"Simulator";
    }
    
    return deviceName;
}


+ (NSString *)getDeviceVersionNumber
{
    return [[self currentDevice] systemVersion];
}

@end
