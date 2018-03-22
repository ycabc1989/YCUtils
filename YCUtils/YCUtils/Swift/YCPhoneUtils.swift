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
    
    //屏幕缩放比率 iPhone6 375为基准
    static func screenTimes() -> CGFloat {
        return screenWidth / 375
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
    
    //根据屏幕适配字体
    static func getNewFontSize(fontSize: CGFloat) -> CGFloat {
        var newFontSize = fontSize
        if (screenWidth == 320) {
            newFontSize = newFontSize - 1;
        } else if (screenWidth == 375) {
            //字体不变
        } else {
            newFontSize = newFontSize + 1;
        }
        return newFontSize;
    }
    
    static func getNewFont(fontSize: CGFloat) -> UIFont {
        var newFontSize = fontSize
        if (screenWidth == 320) {
            newFontSize = newFontSize - 1;
        } else if (screenWidth == 375) {
            //字体不变
        } else {
            newFontSize = newFontSize + 1;
        }
        return UIFont.systemFont(ofSize: newFontSize)
    }
    
    //截屏
    static func screenShot(view: UIView) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 1.0)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    //scrollView截屏
    static func captureScrollView(scrollView: UIScrollView) -> UIImage {
        var image = UIImage()
        UIGraphicsBeginImageContextWithOptions(CGSize(width: scrollView.frame.size.width, height: scrollView.contentSize.height), false, 0.0)
        let savedContentOffset = scrollView.contentOffset
        let savedFrame = scrollView.frame
        scrollView.contentOffset = CGPoint.zero
        scrollView.frame = CGRect(x: 0, y: 0, width: scrollView.frame.size.width, height: scrollView.contentSize.height)

        scrollView.layer.render(in: UIGraphicsGetCurrentContext()!)
        image = UIGraphicsGetImageFromCurrentImageContext()!
        
        scrollView.contentOffset = savedContentOffset
        scrollView.frame = savedFrame
        
        UIGraphicsEndImageContext()
        return image
    }
    
    //scrollView contentSize截屏
    static func captureScrollView(scrollView: UIScrollView, contentSize: CGSize) -> UIImage {
        var image = UIImage()
        UIGraphicsBeginImageContextWithOptions(CGSize(width: scrollView.frame.size.width, height: contentSize.height), false, 0.0)
        let savedContentOffset = scrollView.contentOffset
        let savedFrame = scrollView.frame
        scrollView.contentOffset = CGPoint.zero
        scrollView.frame = CGRect(x: 0, y: 0, width: scrollView.frame.size.width, height: contentSize.height)
        
        scrollView.layer.render(in: UIGraphicsGetCurrentContext()!)
        image = UIGraphicsGetImageFromCurrentImageContext()!
        
        scrollView.contentOffset = savedContentOffset
        scrollView.frame = savedFrame
        
        UIGraphicsEndImageContext()
        return image
    }
}
