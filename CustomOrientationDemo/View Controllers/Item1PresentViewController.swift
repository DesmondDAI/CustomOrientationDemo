//
//  Item1PresentViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1PresentViewController: UIViewController {

    override var shouldAutorotate: Bool {
        let shouldRotate = false
        print("Item1PresentViewController - shouldAutorotate: \(shouldRotate)")
        return shouldRotate
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("Item1PresentViewController - preferred")
        return .landscapeLeft
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1PresentViewController - supported")
        return [.landscapeLeft]
    }
    
    
    // MARK: - Actions
    @IBAction func dismissBtnDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
