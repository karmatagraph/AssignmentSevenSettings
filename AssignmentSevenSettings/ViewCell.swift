//
//  ViewCell.swift
//  AssignmentSevenSettings
//
//  Created by karma on 3/7/22.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgViewLabel: UILabel!
    @IBOutlet weak var supLblName: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        toggleSwitch.isHidden = true
//    }
    
    func setOption(option: SettingOptions){
        if(option.showToggle == false){
            imgView.image = option.img
            imgViewLabel.text = option.lblName
            supLblName.text = option.supLblName
        }else{
            imgView.image = option.img
            imgViewLabel.text = option.lblName
            supLblName.text = option.supLblName
            toggleSwitch.isHidden = false
        }
        
        
    }
}
