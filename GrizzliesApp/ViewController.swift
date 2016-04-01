//
//  ViewController.swift
//  GrizzliesApp
//
//  Created by Mitchell Phillips on 3/31/16.
//  Copyright © 2016 Wasted Potential LLC. All rights reserved.
//

import UIKit
import CoreMotion
import QuartzCore
import Foundation

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    var currentAnimation = 0
    
    var animator: UIDynamicAnimator?
    
    var collider = UICollisionBehavior()
    
    var itemBehavior = UIDynamicItemBehavior()
    
    var gravity = UIGravityBehavior()
    
    var lastLocation: CGPoint = CGPointMake(0,0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load")
        
        // createAnimations()
        
        let paddle1 = Paddle(frame: CGRectMake(100, 400, 125, 100))
        
//        
//        var panRecognizer = UIPanGestureRecognizer(target: paddle1, action: "detectPan:")
//        
//        self.gestureRecognizers = [panRecognizer]
//        
//        var translation = recognizer.translationInView(self.superview!)
//        
//        self.center = CGPointMake(lastLocation.x + translation.x, lastLocation.y + translation.y)
        
        
        
        let paddle2 = Paddle(frame: CGRectMake(100, 10, 125, 100))
        
        let puck = UIView(frame: CGRectMake(125,125,50,50))
        
        let imageName = "grizzlies"
        
        let image2Name = "alaska"
        
        let image = UIImage(named:  imageName)
        
        let image2 = UIImage(named: image2Name)
        
        let imageView = UIImageView(image: image!)
        
        let image2View = UIImageView(image: image2!)
        
        imageView.frame.size = CGSizeMake(125, 100)
        
        image2View.frame.size = CGSizeMake(125, 100)
        
        puck.layer.masksToBounds = true
        
        puck.layer.cornerRadius = 25
        
        puck.backgroundColor = UIColor.blackColor()
        
        view.addSubview(puck)
        
        view.addSubview(paddle1)
        paddle1.addSubview(imageView)
        view.addSubview(paddle2)
        paddle2.addSubview(image2View)
        
        addViewtoBehaviors(puck)
        
        addViewtoBehaviors(paddle1)
        
        addViewtoBehaviors(paddle2)
        
        
        
        
        
        
    }
    
    
    
    func createAnimations() {
        
        
        animator = UIDynamicAnimator(referenceView:self.view)
        
        
        collider.translatesReferenceBoundsIntoBoundary = true
        
        collider.collisionDelegate = self
        
        collider.collisionMode = .Everything
        
        
        animator?.addBehavior(collider)
        
        itemBehavior.friction = 0.2
        
        itemBehavior.elasticity = 0.8
        
        animator?.addBehavior(itemBehavior)
        
        // gravity.gravityDirection = CGVectorMake(0, 0.8)
        
        
    }
    
    
    func addViewtoBehaviors(view: UIView)  {
        
        
        collider.addItem(view)
        
        itemBehavior.addItem(view)
        
        
        
    }
    
    func collisionBehavior(behavior: UICollisionBehavior, endedContactForItem item1: UIDynamicItem, withItem item2: UIDynamicItem) {
        
        print("Collision happened")
    }
    
    


}
