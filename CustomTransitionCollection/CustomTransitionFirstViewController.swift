//
//  CustomTransitionFirstViewController.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/07.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class CustomTransitionFirstViewController: UIViewController {
    
    let animator = CustomTransitionAnimator()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitioningDelegate = self
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
        if let dest = segue.destinationViewController as? CustomTransitionSecondViewController
            where segue.identifier == "modal" {
                
                dest.transitioningDelegate = self
                
        }
    }


}

extension CustomTransitionFirstViewController: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        animator.presenting = true
        return animator
        
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        animator.presenting = false
        return animator
    }
    
}
