//
//  Item2NavigationController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item2NavigationController: UINavigationController {

    override var shouldAutorotate: Bool {
        let shouldRotate = topViewController?.shouldAutorotate ?? false
        print("Item2NavigationController - shouldAutorotate: \(shouldRotate)")
        return shouldRotate
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        let preferred = topViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
        print("Item2NavigationController - preferred: \(preferred)")
        return preferred
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        let supported = topViewController?.supportedInterfaceOrientations ?? .portrait
        print("Item2NavigationController - supported: \(supported)")
        return supported
    }
}
