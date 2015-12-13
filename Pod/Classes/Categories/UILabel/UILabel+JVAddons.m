//
//  UILabel+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "UILabel+JVAddons.h"
#import "JVDefines.h"


@implementation UILabel (JVAddons)

#pragma mark - UILabel helpers

+ (CGSize)sizeOfMultiLineLabel:(UILabel *)label
{
    NSAssert(self, @"UILabel was nil");
    
    //Label text
    NSString *aLabelTextString = label.text;
    
    //Label font
    UIFont *aLabelFont = label.font;
    
    //Width of the Label
    CGFloat aLabelSizeWidth = label.frame.size.width;
    
    if (SYSTEM_VERSION_LESS_THAN(iOS7_0))
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        //version < 7.0
        return [aLabelTextString sizeWithFont:aLabelFont
                            constrainedToSize:CGSizeMake(aLabelSizeWidth, MAXFLOAT)
                                lineBreakMode:NSLineBreakByWordWrapping];
#pragma clang diagnostic pop
    }
    else if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(iOS7_0))
    {
        //version >= 7.0
        //Return the calculated size of the Label
        return [aLabelTextString boundingRectWithSize:CGSizeMake(aLabelSizeWidth, MAXFLOAT)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{
                                                        NSFontAttributeName:aLabelFont
                                                        }
                                              context:nil].size;
        
    }
    
    return label.bounds.size;
}


+ (CGRect)getBoundsWithConstrainedSize:(CGSize)size inLabel:(UILabel *)label
{
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:(label.text == nil)?@" ":label.text
                                                                    attributes:@{NSFontAttributeName:label.font}];
    
    NSStringDrawingOptions opt = NSStringDrawingUsesLineFragmentOrigin;
    
    if(label.lineBreakMode == NSLineBreakByTruncatingTail)
    {
        opt |= NSStringDrawingTruncatesLastVisibleLine;
    }
    
    return [attString boundingRectWithSize:size
                                   options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin
                                   context:nil];
}

@end
