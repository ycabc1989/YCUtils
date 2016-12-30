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
@end

