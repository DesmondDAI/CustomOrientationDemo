//
//  Item2ViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item2ViewController: UIViewController {

    override var shouldAutorotate: Bool {
        let shouldRotate = false
        print("Item2ViewController - shouldAutorotate: \(shouldRotate)")
        return shouldRotate
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        let preferred: UIInterfaceOrientation = .landscapeLeft
        print("Item2ViewController - preferred: \(preferred)")
        return preferred
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        let supported: UIInterfaceOrientationMask = [.landscapeLeft]
        print("Item2ViewController - supported: \(supported)")
        return supported
    }
}
