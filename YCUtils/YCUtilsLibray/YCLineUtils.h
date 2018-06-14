//
//  YCLineUtils.h
//  YCUtils
//
//  Created by yc on 2017/10/11.
//  Copyright © 2017年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCLineUtils : NSObject

//绘制左侧的线
+ (void)addLeftLine:(UIView *)view
              color:(UIColor *)lineColor
            percent:(CGFloat)percent;

//绘制右侧的线
+ (void)addRightLine:(UIView *)view
               color:(UIColor *)lineColor
             percent:(CGFloat)percent;

//绘制顶部的线
+ (void)addTopLine:(UIView *)view
             color:(UIColor *)lineColor
           percent:(CGFloat)percent;;

//绘制底部的线
+ (void)addBottomLine:(UIView *)view
                color:(UIColor *)lineColor
              percent:(CGFloat)percent;
@end
