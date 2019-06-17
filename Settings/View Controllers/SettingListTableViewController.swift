//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by Madison Kaori Shino on 6/17/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.sharedInstance.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // type cast cell as an optional custom table view cell - if cant, then empty cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        
        //set delegate
        cell.cellDelegate = self
        
        cell.updateViews(with: setting)
        return cell
    }
}

//conforming to protocol
extension SettingListTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        //Find index path
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        //Using that path, find the setting
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        //toggle the is on for that setting
        SettingController.sharedInstance.toggleIsOn(for: setting)
        //update the cell view
        cell.updateViews(with: setting)
    }
}



//Protocol: set of instructions/guide      - recipe :D - Table view control
//Delegate: implementing the instructions  - chef      - Cell C


