//
//  YCPhoneUtils.m
//  YCUtils
//
//  Created by yc on 2016/12/30.
//  Copyright © 2016年 yc. All rights reserved.
//

#import "YCPhoneUtils.h"

@implementation YCPhoneUtils

+ (NSString *)appVersion {
    NSDictionary *infoDictionary = [NSBundle mainBundle].infoDictionary;
    NSString *version = [NSString stringWithFormat:@"%@", infoDictionary[@"CFBundleShortVersionString"]];
    return version;
}

+ (NSString *)getBuildId {
    NSDictionary *infoDictionary = [NSBundle mainBundle].infoDictionary;
    NSString *buildId = [NSString stringWithFormat:@"%@", infoDictionary[@"CFBundleVersion"]];
    return buildId;
}

+ (CGFloat)screenWidth {
    return SCREEN_WIDTH;
}

+ (CGFloat)screenHeight {
    return SCREEN_HEIGHT;
}

+ (CGFloat)screenTimes {
    return SCREEN_WIDTH / 375;
}

+ (CGFloat)tabBarSafeBottomMargin {
    return TabbarSafeBottomMargin;
}

+ (CGFloat)getNewFontSize:(CGFloat)fontSize {
    if (SCREEN_WIDTH == 320) {
        fontSize = fontSize - 1;
    } else if (SCREEN_WIDTH == 375) {
        fontSize = fontSize;
    } else {
        fontSize = fontSize + 1;
    }
    return fontSize;
}

+ (UIFont *)getNewFont:(CGFloat)fontSize {
    return [UIFont systemFontOfSize:[self getNewFontSize:fontSize]];
}

+ (UIImage *)screenShot:(UIView *)view {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, YES, 1.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)scrollViewScreenShot:(UIScrollView *)scrollView {
    UIImage *image = nil;
    UIGraphicsBeginImageContextWithOptions(scrollView.contentSize, NO , 0.0);
    {
        CGPoint savedContentOffset = scrollView.contentOffset;
        CGRect savedFrame = scrollView.frame;
        scrollView.contentOffset = CGPointZero;
        scrollView.frame = CGRectMake(0, 0, scrollView.contentSize.width, scrollView.contentSize.height);
        
        [scrollView.layer renderInContext: UIGraphicsGetCurrentContext()];
        image= UIGraphicsGetImageFromCurrentImageContext();
        
        scrollView.contentOffset = savedContentOffset;
        scrollView.frame = savedFrame;
    }
    UIGraphicsEndImageContext();
    return image;
}

@end

