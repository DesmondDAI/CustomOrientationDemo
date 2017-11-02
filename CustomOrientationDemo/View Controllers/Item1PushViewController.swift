//
//  Item1PushViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1PushViewController: UIViewController {

    @IBOutlet weak var settingLabel: UILabel!
    
    var settingText: String?
    var enableAutorotate = false
    
    override var shouldAutorotate: Bool {
        print("Item1PushViewController - shouldAutorotate: \(enableAutorotate)")
        return enableAutorotate
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1PushViewController - supported")
        return [.portrait, .landscapeLeft, .landscapeRight]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingLabel.text = settingText
    }
}
