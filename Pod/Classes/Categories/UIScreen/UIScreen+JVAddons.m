//
//  UIScreen+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIScreen+JVAddons.h"


@implementation UIScreen (JVAddons)

#pragma mark - Screen helper

+ (CGSize)getScreenSize
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        return CGSizeMake(screenSize.height, screenSize.width);
    }
    
    return screenSize;
}


+ (UIInterfaceOrientation)getScreenOrientation
{
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    return orientation;
}

@end
