//
//  CustomAnimator.swift
//  CustomTransitionCollection
//
//  Created by UetaMasamichi on 2015/07/02.
//  Copyright © 2015年 Masamichi Ueta. All rights reserved.
//

import UIKit

class CustomAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    var type: UINavigationControllerOperation = .Push
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        
        let containerView = transitionContext.containerView()!
        
        let offsetBottom = CGAffineTransformMakeTranslation(0, containerView.frame.size.height)
        let offsetTop = CGAffineTransformMakeTranslation(0, -containerView.frame.size.height)
        
        if type == .Push {
            toView.transform = offsetBottom
        } else {
            toView.transform = offsetTop
        }
        
        
        containerView.addSubview(toView)
        containerView.addSubview(fromView)
        
        let duration = transitionDuration(transitionContext)
        
        UIView.animateWithDuration(duration,
            delay: 0.0,
            options: UIViewAnimationOptions.CurveEaseInOut,
            animations: { [unowned self] in
                
                if self.type == .Push {
                    fromView.transform = offsetTop
                } else {
                    fromView.transform = offsetBottom
                }
                
                toView.transform = CGAffineTransformIdentity
            },
            completion: { finished in
                transitionContext.completeTransition(true)
        })
        
    }
}
