//
//  UIScrollView+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UIScrollView+JVAddons.h"


@implementation UIScrollView (JVAddons)

#pragma mark - UIScrollView helpers

- (CGFloat)getScrollViewHeight
{
    // Calculate scroll view height
    CGFloat scrollViewHeight = 0.0f;
    
    for (UIView* view in self.subviews)
    {
        scrollViewHeight += view.frame.size.height;
    }
    
    return scrollViewHeight;
}


- (CGSize)getScrollViewContentSize
{
    // Calculate scroll view contentSize
    CGRect contentRect = CGRectZero;
    
    for (UIView *view in self.subviews)
    {
        contentRect = CGRectUnion(contentRect, view.frame);
    }
    
    return contentRect.size;
}

@end
