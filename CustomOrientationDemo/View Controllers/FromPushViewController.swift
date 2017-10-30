//
//  FromPushViewController.swift
//  CustomOrientationDemo
//
//  Created by Desmond Dai on 30/10/2017.
//  Copyright © 2017 Xinming DAI. All rights reserved.
//

import UIKit

class FromPushViewController: UIViewController {

    override var shouldAutorotate: Bool {
        print("FromPushViewController - shouldAutorotate")
        return false
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        print("FromPushViewController - preferred")
        return .portrait
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        print("FromPushViewController - supported")
        return .portrait
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
