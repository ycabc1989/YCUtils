//
//  YCStringUtils.h
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface YCStringUtils : NSObject

//判断String是否为空
+ (BOOL)isEmptyString:(NSString *)string;

//判断number是否为空，为空则为0
+ (NSNumber *)getNumber:(NSNumber *)num;

//判断string是否为空，为空则为@""
+ (NSString *)getString:(NSString *)str;

//验证手机号是否合法
+ (BOOL)isValidateMobile:(NSString *)mobile;

//MD5加密
+ (NSString *)md5Str:(NSString *)str;
@end
