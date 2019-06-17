//
//  SettingController.swift
//  Settings
//
//  Created by Madison Kaori Shino on 6/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation

class SettingController {
 
    //Singleton - best when the array we are accessing may change by user editing.
    static let sharedInstance = SettingController()
 
    //Could make static (instead of singleton) if absolutely nothing about this array could be changed
    let settings: [Setting] = {
        
        let music = Setting(appName: "iTunes", appIcon: #imageLiteral(resourceName: "iTune"), isOn: false)
        let appStore = Setting(appName: "App Store", appIcon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(appName: "iBooks", appIcon: #imageLiteral(resourceName: "iBook"), isOn: true)
        
        return [music, appStore, iBooks]
    }()
    
    func toggleIsOn(for setting: Setting) {
        //checking current setting, and assigning to opposite
        setting.isOn = !setting.isOn
    }
}
