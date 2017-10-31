//
//  Item1PushViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1PushViewController: UIViewController {

    override var shouldAutorotate: Bool {
        let shouldRotate = true
        print("Item1PushViewController - shouldAutorotate: \(shouldRotate)")
        return shouldRotate
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1PushViewController - supported")
        return [.portrait, .landscapeLeft, .landscapeRight]
    }
}
