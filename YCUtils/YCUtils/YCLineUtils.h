//
//  YCLineUtils.h
//  YCUtils
//
//  Created by yc on 2017/10/11.
//  Copyright © 2017年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCLineUtils : NSObject

//绘制顶部的线
+ (void)addTopLine:(UIView *)view
             color:(UIColor *)lineColor;

//绘制底部的线
+ (void)addBottomLine:(UIView *)view
                color:(UIColor *)lineColor;
@end
