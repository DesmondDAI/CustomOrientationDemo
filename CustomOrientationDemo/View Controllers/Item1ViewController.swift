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
    

    // MARK: - Actions
    @IBAction func pushVCBtnDidTap(_ sender: UIButton) {
        performSegue(withIdentifier: "pushVC", sender: nil)
    }
    
    @IBAction func presentVCBtnDidTap(_ sender: UIButton) {
        performSegue(withIdentifier: "presentVC", sender: nil)
    }
}


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
        // TODO: choose correct cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath)
        return cell
    }
}
