//
//  Manager.swift
//  HeenaSDKDemo
//
//  Created by Heena on 22/04/20.
//  Copyright © 2020 Heena. All rights reserved.
//

import Foundation
import UIKit

public class Manager: NSObject {
    
    public static let share = Manager()
    
    private override init(){
        
    }
    
    public func showString() -> String{
        return UUID().uuidString
    }
    public func didSomethings() -> String {
        return "Yes, i did it "
    }
    
    
    public func openSDK() {
        let story = UIStoryboard(name: "DemoMain", bundle: self.getBundle())
        let vc = story.instantiateViewController(identifier: "OrangeViewController") as? OrangeViewController
        let visibleController = self.topViewController()
        vc?.modalPresentationStyle = .fullScreen
        visibleController?.present(vc!, animated: true, completion: nil)
    }
    
    class var bundle: Bundle? {
        let podBundle = Bundle(for: ViewController.self)
        
        guard let bundleURL = podBundle.url(forResource: "HeenaSDKDemo", withExtension: "bundle"), let fetchBundle = Bundle(url: bundleURL) else {
            return nil
        }
        return fetchBundle
    }
    
    func getBundle()-> Bundle? {
        let podBundle = Bundle(for: ViewController.self)
               
               guard let bundleURL = podBundle.url(forResource: "HeenaSDKDemo", withExtension: "bundle"), let fetchBundle = Bundle(url: bundleURL) else {
                   return nil
               }
               return fetchBundle
    }
    
    // MARK: -
    func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
      
      if let nav = base as? UINavigationController {
        return topViewController(nav.visibleViewController)
      }
      
      if let tab = base as? UITabBarController {
        let moreNavigationController = tab.moreNavigationController
        
        if let top = moreNavigationController.topViewController, top.view.window != nil {
          return topViewController(top)
        } else if let selected = tab.selectedViewController {
          return topViewController(selected)
        }
      }
      
      if let presented = base?.presentedViewController {
        return topViewController(presented)
      }
      
      return base
    }
}
