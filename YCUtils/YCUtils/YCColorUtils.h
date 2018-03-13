//
//  YCColorUtils.h
//  YCUtils
//
//  Created by 颜超 on 2018/1/22.
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

@end
