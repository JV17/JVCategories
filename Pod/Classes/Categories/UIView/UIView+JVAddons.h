//
//  UIView+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIView (JVAddons)

#pragma mark - UIView helpers

+ (instancetype)sharedInstance;


/**
 *  Prints all views in view hierarchy of a view
 */
- (void)printAllViewsInViewHierarchy;


/**
 *  Prints all childrens of view
 *
 *  @param depth the depth of each view
 */
- (void)printAllChildrenViewsWithDepth:(NSInteger)depth;


/**
 *  Prints all views inside of a view
 */
- (void)listSubviews;


/**
 *  Prints all subviews inside of a view with a prefix
 *
 *  @param prefix the prefix to print with subviews
 */
- (void)listSubviewsWithPrefix:(NSString *)prefix;


/**
 *  Removes all subviews inside of subviews
 */
- (void)removeAllSubviews;


/**
 *  Remove object from a view
 *
 *  @param object the object to remove
 *
 *  @return a boolean which determinates if the object was removed or not
 */
- (BOOL)removeObjectFromView:(id)object;


/**
 *  Removes objects inside a view
 *
 *  @return a boolean which determinates if the objects were removed or not
 */
- (BOOL)removeAllObjectsInView;


/**
 *  Applies blur effect to a view with 0-H and 0-W constraints
 *
 *  @param style the blur effect style
 *  @param addConstraints a boolean to either add constraints or not
 */
- (void)applyBlurWithEffectStyle:(UIBlurEffectStyle)style andConstraints:(BOOL)addConstraints;


/**
 *  Adds basic constraints to children view from parent view with zero top, bottom, trailing and leading constraints
 *
 *  @param childView the view to apply the constraints to
 */
- (void)addDefaultConstraintsToChildView:(UIView *)childView;


/**
 *  Adds vertical and horizontal constraints to view.
 *
 *  IMPORTANT! -> Follow this format for vertical V:|-[myView(>=748)]-| and horizontal H:[myView(==200)]-| constraints
 *
 *  @param vConstraint the vertical constraints to apply to view
 *  @param hConstraint the horizontal constraints to apply to view
 */
- (void)addConstraintsToViewWithVertical:(NSString *)vConstraint horizontal:(NSString *)hConstraint DEPRECATED_MSG_ATTRIBUTE("FOLLOW FORMATS V:|-[myView(>=748)]-| and H:[myView(==200)]-|");


/**
 *  Adds gradient color to view
 *
 *  @param colors the colors to use for the gradient effect
 */
- (void)addGradientToViewWithColors:(NSArray *)colors;

@end
