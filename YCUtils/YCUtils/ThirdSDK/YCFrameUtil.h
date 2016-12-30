//
//  YCFrameUtil.h
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCFrameUtil : NSObject
+ (CGFloat)setTop:(CGFloat)top UI:(UIView *)view;
+ (CGFloat)setLeft:(CGFloat)left UI:(UIView *)view;
+ (CGFloat)setRight:(CGFloat)right UI:(UIView *)view;
+ (CGFloat)setHeight:(CGFloat)height UI:(UIView *)view;
+ (CGFloat)setWidth:(CGFloat)width UI:(UIView *)view;
//获取文字高度通过FontSize
+ (CGFloat)getLabHeight:(NSString *)text FontSize:(CGFloat)size Width:(CGFloat)width;
//获取文字高度通过UIFont
+ (CGFloat)getLabHeight:(NSString *)text Font:(UIFont *)font Width:(CGFloat)width;
+ (CGFloat)getLabWidth:(NSString *)text Font:(UIFont *)font Height:(CGFloat)height;
+ (void)setCornerRadius:(CGFloat)width UI:(UIView *)view;
+ (void)setBorder:(CGFloat)width Color:(UIColor *)color UI:(UIView *)view;
+ (CGPoint)getViewCenter:(UIView *)view;
@end
