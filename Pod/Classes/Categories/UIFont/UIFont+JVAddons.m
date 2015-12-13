//
//  UIFont+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIFont+JVAddons.h"


@implementation UIFont (JVAddons)

#pragma mark - UIFont helpers

+ (void)printFonts
{
    NSArray *fonts = [UIFont familyNames];
    
    for (NSString *fontName in fonts)
    {
        NSLog(@"******************************");
        NSLog(@"Font Family Name = %@", fontName);
        NSArray *names = [UIFont fontNamesForFamilyName:fontName];
        NSLog(@"Font Name = %@", names);
    }
}

@end
