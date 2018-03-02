//
//  YCImageTitleButton.m
//  YCUtils
//
//  Created by 颜超 on 2017/11/29.
//  Copyright © 2017年 yc. All rights reserved.
//

#import "YCImageTitleButton.h"

@implementation YCImageTitleButton

//- (void)layoutSubviews
//{
//    [super layoutSubviews];
//    CGFloat midX = self.frame.size.width / 2;
//    CGFloat midY = self.frame.size.height/ 2 ;
//    self.titleLabel.center = CGPointMake(midX, midY + 15);
//    self.imageView.center = CGPointMake(midX, midY - 10);
//}

- (void)verticalImageAndTitle:(CGFloat)spacing
{
    self.titleLabel.backgroundColor = [UIColor clearColor];
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName: self.titleLabel.font}];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
}

@end
