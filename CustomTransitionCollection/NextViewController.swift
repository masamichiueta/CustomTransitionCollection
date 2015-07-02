//
//  NextViewController.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/02.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backButtonDidTap(sender: AnyObject) {
        self.performSegueWithIdentifier("back", sender: self)
    }
}
