//
//  YCTimeUtils.m
//  YCUtils
//
//  Created by yc on 2018/6/11.
//  Copyright © 2018年 yc. All rights reserved.
//

#import "YCTimeUtils.h"

@implementation YCTimeUtils

+ (NSString *)getDateStringWithDateStyle:(NSString *)dateStyle
                                    date:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateStyle];
    return [dateFormatter stringFromDate:date];
}

+ (BOOL)isToday:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear ;
    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
    NSDateComponents *selfCmps = [calendar components:unit fromDate:date];
    return (selfCmps.year == nowCmps.year) && (selfCmps.month == nowCmps.month) && (selfCmps.day == nowCmps.day);
}


@end
