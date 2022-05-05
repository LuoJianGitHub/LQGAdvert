//
//  AppDelegate.swift
//  LQGAdvert
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import UIKit
import LQGBaseAppDelegate
import LQGAdvert

@UIApplicationMain
class AppDelegate: LQGBaseAppDelegate {
    
    override init() {
        super.init()
        
        self.needShowAdvertVCBlock = {
            return true
        }
        
        self.getAdvertVCBlock = {
            return LQGAdvertController.init()
        }
    }
}
