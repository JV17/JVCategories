//
//  UIScrollView+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIScrollView (JVAddons)

#pragma mark - UIScrollView helpers

/**
 *  Gets the height of a scroll view
 *
 *  @return a CGFloat with the height of the scroll view
 */
- (CGFloat)getScrollViewHeight;


/**
 *  Gets the content size of a scroll view
 *
 *  @return a CGSize containing the content size of the scroll view
 */
- (CGSize)getScrollViewContentSize;

@end
