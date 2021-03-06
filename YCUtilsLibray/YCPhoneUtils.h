//
//  YCPhoneUtils.h
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//


//屏幕宽度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

//屏幕缩放倍数 375为基准
#define YC_SCREEN_TIMES ([UIScreen mainScreen].bounds.size.width / 375)

//屏幕高度
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

//判断是否是iPhoneX
#define IS_iPhoneX (SCREEN_WIDTH == 375.f && SCREEN_HEIGHT == 812.f || SCREEN_WIDTH == 414.f && SCREEN_HEIGHT == 896.f ? YES : NO)
#define TabbarSafeBottomMargin (IS_iPhoneX ? 34.f : 0.f)
#define Height_StatusBar (IS_iPhoneX ? 44.0 : 20.0)
#define Height_NavBar (IS_iPhoneX ? 88.0 : 50.0)
#define Height_TabBar (IS_iPhoneX ? 83.0 : 50.0)

//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]


#import <UIKit/UIKit.h>

@interface YCPhoneUtils : NSObject 

//获取App版本号
+ (NSString *)appVersion;

//获取App的build号
+ (NSString *)getBuildId;

//获取uuid
+ (NSString *)getUUID;

//获取包名
+ (NSString *)getPackageName;

//屏幕宽度
+ (CGFloat)screenWidth;

//屏幕高度
+ (CGFloat)screenHeight;

//屏幕缩放倍数 375 iPhone6为基准
+ (CGFloat)screenTimes;

//获取tabbar的margin
+ (CGFloat)tabBarSafeBottomMargin;

//获取新的fontSize
+ (CGFloat)getNewFontSize:(CGFloat)fontSize;
+ (UIFont *)getNewBoldFont:(CGFloat)fontSize;

//获取新的font
+ (UIFont *)getNewFont:(CGFloat)fontSize;

//截屏
+ (UIImage *)screenShot:(UIView *)view;

//scrollView截屏
+ (UIImage *)captureScrollView:(UIScrollView *)scrollView;
+ (UIImage *)captureScrollView:(UIScrollView *)scrollView contentSize:(CGSize)contentSize;

//获取当前时间
+ (NSString *)getCurrentTime;
@end
