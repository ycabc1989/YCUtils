//
//  YCFrameUtil.m
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//

#import "QuartzCore/QuartzCore.h"
#import "YCFrameUtil.h"

@implementation YCFrameUtil

+ (CGFloat)setTop:(CGFloat)top UI:(UIView *)view{
    CGRect frame = view.frame;
    frame.origin.y = top;
    view.frame = frame;
    return top+frame.size.height;
}

+ (CGFloat)setLeft:(CGFloat)left UI:(UIView *)view{
    CGRect frame = view.frame;
    frame.origin.x = left;
    view.frame = frame;
    return left+frame.size.width;
}

+ (CGFloat)setRight:(CGFloat)right UI:(UIView *)view{
    CGRect frame = view.frame;
    frame.origin.x = right-frame.size.width;
    view.frame = frame;
    return right-frame.size.width;
}

+ (CGFloat)setHeight:(CGFloat)height UI:(UIView *)view{
    CGRect frame = view.frame;
    frame.size.height = height;
    view.frame = frame;
    return height+frame.origin.y;
}

+ (CGFloat)setWidth:(CGFloat)width UI:(UIView *)view{
    CGRect frame = view.frame;
    frame.size.width = width;
    view.frame = frame;
    return width+frame.origin.x;
}

+ (CGFloat)getLabHeight:(NSString *)text FontSize:(CGFloat)size Width:(CGFloat)width {
    CGSize titleSize = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:size]} context:nil].size;
    return titleSize.height;
}

+ (CGFloat)getLabHeight:(NSString *)text FontSize:(CGFloat)size Width:(CGFloat)width lineSpace:(CGFloat)lineSpace {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    
    CGSize titleSize = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:size], NSParagraphStyleAttributeName : paragraphStyle} context:nil].size;
    return titleSize.height;
}

+ (CGFloat)getLabHeight:(NSString *)text Font:(UIFont *)font Width:(CGFloat)width {
    CGSize titleSize = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size;
    return titleSize.height;
}

+ (CGFloat)getLabWidth:(NSString *)text Font:(UIFont *)font Height:(CGFloat)height {
    CGSize titleSize = [text boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size;
    return titleSize.width;
}

+ (void)setCornerRadius:(CGFloat)width UI:(UIView *)view{
    CALayer *viewLayer = view.layer;
    viewLayer.masksToBounds = YES;
    viewLayer.cornerRadius = width;
}

+ (void)setBorder:(CGFloat)width Color:(UIColor *)color UI:(UIView *)view{
    CALayer *viewLayer = view.layer;
    viewLayer.borderWidth = width;
    viewLayer.borderColor = [color CGColor];
    
}
+ (CGPoint)getViewCenter:(UIView *)view{
    CGRect frame = view.frame;
    CGPoint center = CGPointMake(frame.size.width/2, frame.size.height/2);
    return center;
}
@end
