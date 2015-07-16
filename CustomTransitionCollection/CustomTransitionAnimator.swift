//
//  CustomTransitionAnimator.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/16.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class CustomTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    var presenting: Bool = true

    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let viewControllers: (from: UIViewController, to: UIViewController) = (transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!, transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!)

        let firstViewConctroller = (!self.presenting ? viewControllers.to : viewControllers.from) as! CustomTransitionFirstViewController
        let secondViewController = (!self.presenting ? viewControllers.from : viewControllers.to) as! CustomTransitionSecondViewController

        let firstView = firstViewConctroller.view
        let secondView = secondViewController.view
        
        
        
        
    }
    
    
    
}
