//
//  Settings.swift
//  Settings
//
//  Created by Madison Kaori Shino on 6/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class Setting {
    let appName: String
    let appIcon: UIImage
    var isOn: Bool
    
    init(appName: String, appIcon: UIImage, isOn: Bool) {
        self.appName = appName
        self.appIcon = appIcon
        self.isOn = isOn
    }
}
