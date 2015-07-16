//
//  CustomNavigationFirstViewController.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/02.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class CustomNavigationFirstViewController: UIViewController {
    
    let animator = CustomNavigationAnimator()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnActionForSegue(segue: UIStoryboardSegue) {
        
    }

    @IBAction func showButtonDidTap(sender: AnyObject) {
        self.performSegueWithIdentifier("show", sender: self)
    }

}

extension CustomNavigationFirstViewController: UINavigationControllerDelegate {
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if toVC is TableViewController {
            return nil
        }
        
        switch(operation) {
        case .Push:
            animator.type = .Push
            return animator
        case .Pop:
            animator.type = .Pop
            return animator
        default:
            return nil
        }
    }
    
}

