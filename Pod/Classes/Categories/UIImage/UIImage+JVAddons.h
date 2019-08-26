//
//  UIImage+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <UIKit/UIKit.h>


@interface UIImage (JVAddons)

#pragma mark - UIImage helpers & effects

/**
 Creates an image from provided view.
 
 @param view
    The view to create an image from.
 
 @return 
    The image from provided view.
 */
+ (UIImage *)imageFromView:(UIView *)view;


/**
 Scales provided image to provided size.
 
 @param image
    The image to scale.
 @param size
    The new image size.
 
 @return
    The scaled image.
 */
+ (UIImage *)imageScaledToSize:(UIImage *)image size:(CGSize)size;


/**
 Blurs provided image with provided blur level.
 
 @param image
    The image to apply blur to.
 @param blur
    The blur level to apply to image.
 
 @return
    The blur image.
 */
+ (UIImage *)blurImage:(UIImage *)image blurLevel:(CGFloat)blur;


/**
 Changes the image color of provided image with provided color.
 
 @param image
    The image to change the color to.
 @param color
    The new image color.
 
 @return
    The image with the provided color.
 */
+ (UIImage *)changeImageColor:(UIImage *)image color:(UIColor *)color;


/**
 Takes a screenshot of provided view with after screen updates or not.
 
 @param view
    The view to take screenshot of.
 @param updated
    After the screen updates or not.
 
 @return
    The screenshot of the provided view.
 */
+ (UIImage *)takeScreenShotOfView:(UIView *)view afterScreenUpdates:(BOOL)updated;


/**
 Applys a subtle blur effect to view.
 
 @param view
    The view to apply the blur effect to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applySubtleEffectInView:(UIView *)view;


/**
 Applys a light blur effect to view.
 
 @param view
    The view to apply the blur effect to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applyLightEffectInView:(UIView *)view;


/**
 Applys an extra light blur effect to view.
 
 @param view
    The view to apply the blur effect to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applyExtraLightEffectInView:(UIView *)view;


/**
 Applys a dark blur effect to view.
 
 @param view
    The view to apply the blur effect to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applyDarkEffectInView:(UIView *)view;


/**
 Applys a tint color blur effect to view.
 
 @param tintColor
    The tint color for the effect.
 @param view
    The view to apply the blur effect to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor inView:(UIView *)view;


/**
 Applys blur effect to view with radius, tint color, saturation factor, mask image and in provided view.
 
 @param blurRadius
    The desired blur radius.
 @param tintColor
    The desired tint color.
 @param saturationDeltaFactor
    The saturation factor.
 @param maskImage
    The mask image.
 @param senderView
    The view where to apply the blur to.
 
 @return
    An image with the blur effect of provided view.
 */
+ (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage inView:(UIView *)senderView;

@end
