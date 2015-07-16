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
        
        let container = transitionContext.containerView()!
        
        let viewControllers: (from: UIViewController, to: UIViewController) = (transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!, transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!)

        //let firstViewConctroller = (!self.presenting ? viewControllers.to : viewControllers.from) as! CustomTransitionFirstViewController
        let secondViewController = (!self.presenting ? viewControllers.from : viewControllers.to) as! CustomTransitionSecondViewController

        //let firstView = firstViewConctroller.view
        let secondView = secondViewController.view
        
        if presenting {
            offStageSecondController(secondViewController)
        }
        
        container.addSubview(secondView)
        
        let duration = transitionDuration(transitionContext)
        
        UIView.animateWithDuration(duration,
            delay: 0.0,
            usingSpringWithDamping: 0.7,
            initialSpringVelocity: 0.8,
            options: UIViewAnimationOptions.TransitionNone,
            animations: {
                if self.presenting {
                    self.onStageSecondController(secondViewController)
                } else {
                    self.offStageSecondController(secondViewController)
                }
                
            },
            completion: { finished in
                transitionContext.completeTransition(true)
        })
        
        
    }
    
    func offStage(amount: CGFloat) -> CGAffineTransform {
        return CGAffineTransformMakeTranslation(amount, 0)
    }
    
    func offStageSecondController(secondViewController: CustomTransitionSecondViewController){
        
        secondViewController.view.alpha = 0
        
        let topRowOffset  :CGFloat = 300
        let middleRowOffset :CGFloat = 150
        let bottomRowOffset  :CGFloat = 50
        
        secondViewController.firstStackView.transform = offStage(-topRowOffset)
        secondViewController.thirdStackView.transform = offStage(-middleRowOffset)
        secondViewController.fifthStackView.transform = offStage(-bottomRowOffset)
        secondViewController.secondStackView.transform = offStage(topRowOffset)
        secondViewController.fourthStackView.transform = offStage(middleRowOffset)
        secondViewController.sixthStackView.transform = offStage(bottomRowOffset)
        
    }
    
    func onStageSecondController(secondViewController: CustomTransitionSecondViewController){
        
        secondViewController.view.alpha = 1
        secondViewController.firstStackView.transform = CGAffineTransformIdentity
        secondViewController.thirdStackView.transform = CGAffineTransformIdentity
        secondViewController.fifthStackView.transform = CGAffineTransformIdentity
        secondViewController.secondStackView.transform = CGAffineTransformIdentity
        secondViewController.fourthStackView.transform = CGAffineTransformIdentity
        secondViewController.sixthStackView.transform = CGAffineTransformIdentity
        
    }
    
    
    
}
