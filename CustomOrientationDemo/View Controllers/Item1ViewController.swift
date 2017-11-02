//
//  Item1ViewController.swift
//  CustomOrientationDemo
//
//  Created by DAIXinming on 29/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {

    @IBOutlet weak var settingsTableView: UITableView! {
        didSet {
            settingsTableView.dataSource = self
            settingsTableView.delegate = self
        }
    }
    
    override var shouldAutorotate: Bool {
        let shouldRotate = false
        print("Item1ViewController - shouldAutorotate: \(shouldRotate)")
        return shouldRotate
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1ViewController - supported")
        return [.portrait]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = settingsTableView.indexPathForSelectedRow {
            settingsTableView.deselectRow(at: selectedIndexPath, animated: true)
        }
    }
}


// MARK: - UITableViewDataSource
extension Item1ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
            
        case 1:
            return 3
            
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath)
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Disable Autorotate"
                
            case 1:
                cell.textLabel?.text = "Enable Autorotate"
                
            default:
                break
            }
            
        case 1:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Disable Autorotate - Portrait"
                
            case 1:
                cell.textLabel?.text = "Disable Autorotate - LandscapeLeft"
                
            case 2:
                cell.textLabel?.text = "Enable Autorotate"
                
            default:
                break
            }
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Push"
            
        case 1:
            return "Present"
            
        default:
            return nil
        }
    }
}


// MARK: - UITableViewDelegate
extension Item1ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let settingText = tableView.cellForRow(at: indexPath)?.textLabel?.text
        switch indexPath.section {
        case 0:
            let pushVC = storyboard?.instantiateViewController(withIdentifier: "Item1PushViewController") as! Item1PushViewController
            pushVC.settingText = settingText
            switch indexPath.row {
            case 0:
                pushVC.enableAutorotate = false
                
            case 1:
                pushVC.enableAutorotate = true
                
            default:
                break
            }
            navigationController?.pushViewController(pushVC, animated: true)
            
        case 1:
            let presentVC = storyboard?.instantiateViewController(withIdentifier: "Item1PresentViewController") as! Item1PresentViewController
            presentVC.settingText = settingText
            switch indexPath.row {
            case 0:
                presentVC.enableRotate = false
                presentVC.supportedOrientations = .portrait
                
            case 1:
                presentVC.enableRotate = false
                presentVC.supportedOrientations = .landscapeLeft
                
            case 2:
                presentVC.enableRotate = true
                presentVC.supportedOrientations = .allButUpsideDown
                
            default:
                break
            }
            present(presentVC, animated: true, completion: nil)
            
        default:
            break
        }
    }
}
