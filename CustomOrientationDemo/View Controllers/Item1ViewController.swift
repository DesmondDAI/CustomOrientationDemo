//
//  Item1ViewController.swift
//  CustomOrientationDemo
//
//  Created by DAIXinming on 29/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1ViewController: UIViewController {

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
