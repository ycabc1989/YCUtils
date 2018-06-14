//
//  YCStringUtils.m
//  YCUtils
//
//  Created by yc on 2016/12/23.
//  Copyright © 2016年 yc. All rights reserved.
//

#import "YCStringUtils.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation YCStringUtils

+ (BOOL)isEmptyString:(NSString *)string {
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return YES;
    }
    return NO;
}

+ (NSNumber *)getNumber:(NSNumber *)num {
    if (num == nil) {
        return @(0);
    }
    return num;
}

+ (NSString *)getString:(NSString *)str {
    if ([self isEmptyString:str]) {
        return @"";
    }
    return str;
}

+ (BOOL)isValidateMobile:(NSString *)mobile {
    //此为手机
    NSString *phoneRegex1 = @"^.{11}$";
    //    NSString *phoneRegex = @"^((0(10|2[1-3]|[3-9]\\d{2}))?[1-9]\\d{6,7})|((13[0-9])|(14[0,0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";//此为手机或者固话
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex1];
    return [phoneTest evaluateWithObject:mobile];
}

+ (NSString *)md5Str:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
