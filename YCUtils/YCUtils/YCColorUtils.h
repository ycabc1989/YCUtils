//
//  YCColorUtils.h
//  YCUtils
//
//  Created by yc on 2018/1/22.
//  Copyright © 2018年 yc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YCColorUtils : NSObject

/**
 图片修改颜色

 @param color 想修改的颜色
 @param image 目标图片
 @return 返回新图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color image:(UIImage *)image;


/**
 16进制String转UIColor

 @param color 16进制颜色 例如#F2F2F2
 @return
 */
+ (UIColor *)colorWithHexString:(NSString *)color;
@end
