//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Madison Kaori Shino on 6/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

//Define the Protocol (above class)
protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //Define the Delegate (optional - weak)
    weak var cellDelegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.appIcon
        settingNameLabel.text = setting.appName
        settingSwitch.isOn = setting.isOn
        //ternary operator. true : false
        self.backgroundColor = settingSwitch.isOn ? .lightGray : .white
    }
    
    @IBAction func settingCellToggled(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
    
}


