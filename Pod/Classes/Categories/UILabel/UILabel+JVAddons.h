//
//  UILabel+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UILabel (JVAddons)

#pragma mark - UILabel helpers

/**
 Provides the sie of an multi-line label.
 
 @param label
    The label to calculate the size of.
 
 @return 
    The proper size for this multi-line label.
 */
+ (CGSize)sizeOfMultiLineLabel:(UILabel *)label;


/**
 Gets the bounds with constrained size on the provided label.
 
 @param size
    The constrained size.
 @param label
    The label to calculate the bounds to.
 
 @return
    The bounds of the provided label in the constrained size.
 */
+ (CGRect)getBoundsWithConstrainedSize:(CGSize)size inLabel:(UILabel *)label;

@end
