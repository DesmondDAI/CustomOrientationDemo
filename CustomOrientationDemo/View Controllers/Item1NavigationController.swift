//
//  Item1NavigationController.swift
//  CustomOrientationDemo
//
//  Created by DAIXinming on 29/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1NavigationController: UINavigationController {

    override var shouldAutorotate: Bool {
        print("Item1NavigationController - shouldAutorotate")
        return topViewController?.shouldAutorotate ?? false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1NavigationController - supported")
        return topViewController?.supportedInterfaceOrientations ?? .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Change status bar style
        navigationBar.barStyle = .black
    }
}
