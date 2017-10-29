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
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("Item1NavigationController - preferred")
        return topViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("Item1NavigationController - supported")
        return topViewController?.supportedInterfaceOrientations ?? .portrait
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
