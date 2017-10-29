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
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("RootTabBarController - preferred")
        return selectedViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("RootTabBarController - supported")
        return selectedViewController?.supportedInterfaceOrientations ?? .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
