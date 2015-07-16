//
//  InteractiveTransitionFirstViewController.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/16.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class InteractiveTransitionFirstViewController: UIViewController {

    let animator = InteractiveTransitionAnimator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
        
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let dest = segue.destinationViewController as? InteractiveTransitionSecondViewController
            where segue.identifier == "modal" {
                
                dest.transitioningDelegate = self
        }
    }

}

extension InteractiveTransitionFirstViewController: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return nil
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return nil
    }
    
}
