//
//  YCLineUtils.m
//  YCUtils
//
//  Created by yc on 2017/10/11.
//  Copyright © 2017年 yc. All rights reserved.
//

#import "YCLineUtils.h"

@implementation YCLineUtils

+ (void)addTopLine:(UIView *)view color:(UIColor *)lineColor {
    CALayer *bottomBorder = [CALayer layer];
    float height = 0.5f;
    float width = view.frame.size.width;
    bottomBorder.frame = CGRectMake(0.0f, 0.0f, width, height);
    bottomBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:bottomBorder];
}

+ (void)addBottomLine:(UIView *)view color:(UIColor *)lineColor {
    CALayer *bottomBorder = [CALayer layer];
    float height = view.frame.size.height - 1.0f;
    float width = view.frame.size.width;
    bottomBorder.frame = CGRectMake(0.0f, height, width, 0.5f);
    bottomBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:bottomBorder];
}
@end
