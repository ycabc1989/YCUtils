//
//  YCPhoneUtils.h
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//


//屏幕宽度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

//屏幕高度
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]


#import <UIKit/UIKit.h>

@interface YCPhoneUtils : NSObject {
    
}

//获取App版本号
+ (NSString *)appVersion;

//获取App的build号
+ (NSString *)getBuildId;

//屏幕宽度
+ (CGFloat)screenWidth;

//屏幕高度
+ (CGFloat)screenHeight;

//获取新的fontSize
+ (CGFloat)getNewFontSize:(CGFloat)fontSize;

//获取新的font
+ (UIFont *)getNewFont:(CGFloat)fontSize;

//截屏
+ (UIImage *)screenShot:(UIView *)view;
@end
