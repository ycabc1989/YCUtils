//
//  PhoneUtils.swift
//  YCUtils
//
//  Created by yc on 15/10/30.
//  Copyright © 2015年 ZoomBin. All rights reserved.
//

import UIKit

class YCPhoneUtils: NSObject {
    static let screenWidth = UIScreen.main.bounds.size.width//屏幕宽度
    static let screenHeight = UIScreen.main.bounds.size.height//屏幕高度
    
    //获取系统版本
    static func getAppVer() ->String{
        let infoDictionary = Bundle.main.infoDictionary
        let majorVersion : AnyObject? = infoDictionary!["CFBundleShortVersionString"] as AnyObject?
        let appversion = majorVersion as! String
        return appversion
    }
    
    //获取系统BuildId
    static func getBuildId() -> String{
        let infoDictionary = Bundle.main.infoDictionary
        let minorVersion : AnyObject? = infoDictionary!["CFBundleVersion"] as AnyObject?
        let buildId = minorVersion as! String
        return buildId
    }
    
    //获取当前时间
    static func getCurrentTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    
    //获取当前系统语言
    static func getSystemLanguage()-> String{
        let userDefault : UserDefaults = UserDefaults.standard
        let allLanguages : NSArray = userDefault.object(forKey: "AppleLanguages") as! NSArray
        return allLanguages[0] as! String
    }
    
}
