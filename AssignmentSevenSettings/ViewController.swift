//
//  ViewController.swift
//  AssignmentSevenSettings
//
//  Created by karma on 3/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    // empty array of type setting options
    var options: [SettingOptions] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        options = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
//        toggleSwitch.isHidden = true
        
    
    }
    
    func createArray() -> [SettingOptions]{
        var tempArr: [SettingOptions] = []
        let option0 = SettingOptions(img: UIImage(named:"user")!, lblName: "Sign in", supLblName: "",showToggle: true)
        let option1 = SettingOptions(img: UIImage(named: "airplane")!, lblName: "Airplane Mode", supLblName: ">",showToggle: false)
        let option2 = SettingOptions(img: UIImage(named: "wifi")!, lblName: "WiFi", supLblName: "Not connected >",showToggle: false)
        let option3 = SettingOptions(img: UIImage(named: "bluetooth")!, lblName: "Bluetooth", supLblName: "Not connected >",showToggle: false)
//        let option4 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option5 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option6 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option7 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option8 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option9 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option10 = SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
//        let option11= SettingOptions(img: UIImage("")!, lblName: "", supLblName: "")
        
        tempArr.append(option0)
        tempArr.append(option1)
        tempArr.append(option2)
        tempArr.append(option3)
//        tempArr.append(option4)
        
        return tempArr
        
        
    }


}
extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let option = options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionCell",for: indexPath) as! ViewCell
        cell.setOption(option: option)
        return cell
    }
    
    
}

