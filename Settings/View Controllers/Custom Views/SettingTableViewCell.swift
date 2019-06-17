//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Madison Kaori Shino on 6/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.appIcon
        settingNameLabel.text = setting.appName
        settingSwitch.isOn = setting.isOn
        //ternary operator. true : false
        self.backgroundColor = settingSwitch.isOn ? .lightGray : .white
//        if settingSwitch.isOn == true {
//            self.backgroundColor = UIColor.lightGray
//        } else {
//            self.backgroundColor = UIColor.white
//        }
    }
    
}
