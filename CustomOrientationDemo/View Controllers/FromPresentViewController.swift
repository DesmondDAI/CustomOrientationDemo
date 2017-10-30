//
//  FromPresentViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 30/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class FromPresentViewController: UIViewController {

    override var shouldAutorotate: Bool {
        print("FromPresentViewController - shouldAutorotate")
        return false
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("FromPresentViewController - preferred")
        return .landscapeLeft
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("FromPresentViewController - supported")
        return .landscapeLeft
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissBtnDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
