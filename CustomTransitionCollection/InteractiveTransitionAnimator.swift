//
//  InteractiveTransitionAnimator.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/16.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class InteractiveTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerInteractiveTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
    }
    
    func startInteractiveTransition(transitionContext: UIViewControllerContextTransitioning) {
        
    }
}
