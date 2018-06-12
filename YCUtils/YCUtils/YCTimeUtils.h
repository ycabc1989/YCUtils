//
//  YCTimeUtils.h
//  YCUtils
//
//  Created by yc on 2018/6/11.
//  Copyright © 2018年 yc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YCTimeUtils : NSObject


/**
 根据dateFormat获取时间字符串

 @param dateStyle 日期样式
 @param date 日期
 @return 返回时间字符串
 */
+ (NSString *)getDateStringWithDateStyle:(NSString *)dateStyle
                                    date:(NSDate *)date;


/**
 是否是今天？

 @param date 日期date
 @return 返回true或者false 
 */
+ (BOOL)isToday:(NSDate *)date;
@end
