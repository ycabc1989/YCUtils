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

+ (NSString *)getUUID {
    return [[[UIDevice currentDevice] identifierForVendor] UUIDString];
}

+ (NSString *)getPackageName {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *packageName = [NSString stringWithFormat:@"%@", infoDictionary[@"CFBundleIdentifier"]];
    return packageName;
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

+ (UIFont *)getNewBoldFont:(CGFloat)fontSize {
    return [UIFont boldSystemFontOfSize:[self getNewFontSize:fontSize]];
}

+ (UIImage *)screenShot:(UIView *)view {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, YES, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)captureScrollView:(UIScrollView *)scrollView {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(scrollView.frame.size.width, scrollView.contentSize.height), NO, 0);
    CGPoint savedContentOffset = scrollView.contentOffset;
    CGRect savedFrame = scrollView.frame;
    scrollView.contentOffset = CGPointZero;
    scrollView.frame = CGRectMake(0, 0, scrollView.frame.size.width, scrollView.contentSize.height);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    scrollView.contentOffset = savedContentOffset;
    scrollView.frame = savedFrame;
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)captureScrollView:(UIScrollView *)scrollView contentSize:(CGSize)contentSize {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(scrollView.frame.size.width, contentSize.height), NO, 0);
    CGPoint savedContentOffset = scrollView.contentOffset;
    CGRect savedFrame = scrollView.frame;
    scrollView.contentOffset = CGPointZero;
    scrollView.frame = CGRectMake(0, 0, contentSize.width, contentSize.height);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    scrollView.contentOffset = savedContentOffset;
    scrollView.frame = savedFrame;
    UIGraphicsEndImageContext();
    return image;
}

+ (NSString *)getCurrentTime {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return [dateFormatter stringFromDate:[NSDate new]];
}

@end

