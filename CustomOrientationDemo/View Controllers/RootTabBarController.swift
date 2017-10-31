//
//  RootTabBarController.swift
//  CustomOrientationDemo
//
//  Created by DAIXinming on 29/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override var shouldAutorotate: Bool {
        print("RootTabBarController - shouldAutorotate")
        return selectedViewController?.shouldAutorotate ?? false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("RootTabBarController - supported")
        return selectedViewController?.supportedInterfaceOrientations ?? .portrait
    }
}
