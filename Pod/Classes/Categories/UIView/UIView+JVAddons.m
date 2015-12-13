//
//  UIView+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIView+JVAddons.h"


@implementation UIView (JVAddons)

#pragma mark - UIView helpers

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}


- (void)printAllViewsInViewHierarchy
{
    NSLog(@"%@", self);
    
    for (UIView *subview in self.subviews)
    {
        [subview printAllViewsInViewHierarchy];
    }
}


- (void)printAllChildrenViewsWithDepth:(NSInteger)depth
{
    // doc http://stackoverflow.com/questions/7243888/how-to-list-out-all-the-subviews-in-a-uiviewcontroller-in-ios/8962824#8962824
    //Tabs are just for formatting
    NSString *tabs = @"";

    for (int i = 0; i < depth; i++)
    {
        tabs = [tabs stringByAppendingFormat:@"\t"];
    }
    
    NSLog(@"%@%@", tabs, self);
    
    depth++; //Increment the depth
    
    for (UIView *child in self.subviews)
    {
        [child printAllChildrenViewsWithDepth:depth];
    }
}


- (void)listSubviews
{
    [self listSubviewsWithPrefix:@""];
}


- (void)listSubviewsWithPrefix:(NSString *)prefix
{
    NSArray *subviews = self.subviews;
    
    for (UIView *subview in subviews)
    {
        NSLog(@"%@ %@ (%d %d; %d %d)", prefix, subview.class
              , (int)subview.frame.origin.x
              , (int)subview.frame.origin.y
              , (int)subview.frame.size.width
              , (int)subview.frame.size.height);
        [subview listSubviewsWithPrefix:[NSString stringWithFormat:@"%@    ", prefix]];
    }
}


- (void)removeAllSubviews
{
    for (UIView *view in self.subviews)
    {
        [view removeFromSuperview];
    }
}


- (BOOL)removeObjectFromView:(id)object
{
    for (UIView *subView in self.subviews)
    {
        if ([subView isEqual:[object class]])
        {
            [subView removeFromSuperview];
            return YES;
        }
    }
    
    return NO;
}


- (BOOL)removeAllObjectsInView
{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    if(!self.superview)
    {
        return YES;
    }
    
    return NO;
}


- (void)applyBlurWithEffectStyle:(UIBlurEffectStyle)style andConstraints:(BOOL)addConstraints
{
    if(UIAccessibilityIsReduceTransparencyEnabled())
    {
        return;
    }
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:style];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = self.bounds;
    
    [self addSubview:blurEffectView];
    
    if(!addConstraints)
    {
        return;
    }
    
    [blurEffectView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:blurEffectView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:blurEffectView
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:blurEffectView
                                                     attribute:NSLayoutAttributeLeading
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeading
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:blurEffectView
                                                     attribute:NSLayoutAttributeTrailing
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTrailing
                                                    multiplier:1
                                                      constant:0]];
}


- (void)addDefaultConstraintsToChildView:(UIView *)childView
{
    [childView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                                     attribute:NSLayoutAttributeLeading
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeading
                                                    multiplier:1
                                                      constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:childView
                                                     attribute:NSLayoutAttributeTrailing
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTrailing
                                                    multiplier:1
                                                      constant:0]];
}


- (void)addConstraintsToViewWithVertical:(NSString *)vConstraint horizontal:(NSString *)hConstraint
{
    [self.superview addConstraints:[NSLayoutConstraint
                                    constraintsWithVisualFormat:vConstraint
                                    options:NSLayoutFormatDirectionLeadingToTrailing
                                    metrics:nil
                                    views:NSDictionaryOfVariableBindings(self)]];
    
    [self.superview addConstraints:[NSLayoutConstraint
                                    constraintsWithVisualFormat:hConstraint
                                    options:NSLayoutFormatDirectionLeadingToTrailing
                                    metrics:nil
                                    views:NSDictionaryOfVariableBindings(self)]];
}


- (void)addGradientToViewWithColors:(NSArray *)colors
{
    if(!colors.count)
    {
        return;
    }
    
        // FOLLOW FORMATS for colors NSArray *colors = @[(id)[[UIColor lightGrayColor] CGColor], (id)[[UIColor grayColor] CGColor]];
    NSMutableArray *newColors = [[NSMutableArray alloc] initWithCapacity:colors.count];
    
    for (UIColor *color in colors)
    {
        [newColors addObject:(id)color.CGColor];
    }

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = newColors;
    
    self.layer.masksToBounds = YES;
    [self.layer insertSublayer:gradient atIndex:0];
}

@end
