//
//  YCLineUtils.m
//  YCUtils
//
//  Created by yc on 2017/10/11.
//  Copyright © 2017年 yc. All rights reserved.
//

#import "YCLineUtils.h"

@implementation YCLineUtils

+ (void)addLeftLine:(UIView *)view color:(UIColor *)lineColor percent:(CGFloat)percent{
    CGFloat value = 1;
    if (percent > 100) {
        value = 1;
    } else if (percent <= 0) {
        value = 0;
    } else {
        value = percent / 100;
    }
    CALayer *leftBorder = [CALayer layer];
    float height = view.frame.size.height;
    float width = 0.5f;
    leftBorder.frame = CGRectMake(0.5f, (1 - value) * height / 2, width, height * value);
    leftBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:leftBorder];
}

+ (void)addRightLine:(UIView *)view color:(UIColor *)lineColor percent:(CGFloat)percent {
    CGFloat value = 1;
    if (percent > 100) {
        value = 1;
    } else if (percent <= 0) {
        value = 0;
    } else {
        value = percent / 100;
    }
    CALayer *rightBorder = [CALayer layer];
    float height = view.frame.size.height;
    float width = 0.5f;
    rightBorder.frame = CGRectMake(-0.5f, (1 - value) * height / 2, width, height * value);
    rightBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:rightBorder];
}

+ (void)addTopLine:(UIView *)view color:(UIColor *)lineColor percent:(CGFloat)percent{
    CGFloat value = 1;
    if (percent > 100) {
        value = 1;
    } else if (percent <= 0) {
        value = 0;
    } else {
        value = percent / 100;
    }
    CALayer *topBorder = [CALayer layer];
    float height = 0.5f;
    float width = view.frame.size.width;
    topBorder.frame = CGRectMake((1 - value) * width / 2, 0.5f, width * value, height);
    topBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:topBorder];
}

+ (void)addBottomLine:(UIView *)view color:(UIColor *)lineColor percent:(CGFloat)percent{
    CGFloat value = 1;
    if (percent > 100) {
        value = 1;
    } else if (percent <= 0) {
        value = 0;
    } else {
        value = percent / 100;
    }
    CALayer *bottomBorder = [CALayer layer];
    float height = view.frame.size.height - 0.5f;
    float width = view.frame.size.width;
    bottomBorder.frame = CGRectMake((1 - value) * width / 2, height, width * value, 0.5f);
    bottomBorder.backgroundColor = lineColor.CGColor;
    [view.layer addSublayer:bottomBorder];
}
@end
