//
//  Item1PresentViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 31/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class Item1PresentViewController: UIViewController {

    @IBOutlet weak var settingLabel: UILabel!
    
    var settingText: String?
    var enableRotate = false
    var supportedOrientations: UIInterfaceOrientationMask = .portrait
    var preferredOrientation: UIInterfaceOrientation {
        switch supportedOrientations {
        case .landscapeLeft:
            return .landscapeLeft
            
        case .landscapeRight:
            return .landscapeRight
            
        default:
            return .portrait
        }
    }
    
    override var shouldAutorotate: Bool {
        print("Item1PresentViewController - shouldAutorotate: \(enableRotate)")
        return enableRotate
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("Item1PresentViewController - preferred")
        return preferredOrientation
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1PresentViewController - supported")
        return supportedOrientations
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingLabel.text = settingText
    }
    
    
    // MARK: - Actions
    @IBAction func dismissBtnDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
