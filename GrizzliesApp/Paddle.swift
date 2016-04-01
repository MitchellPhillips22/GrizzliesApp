//
//  Paddle.swift
//  GrizzliesApp
//
//  Created by Mitchell Phillips on 4/1/16.
//  Copyright © 2016 Wasted Potential LLC. All rights reserved.
//

import Foundation
import UIKit

class Paddle: UIView {
    
    var lastLocation: CGPoint = CGPointMake(0,0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        var panRecognizer = UIPanGestureRecognizer(target: self, action: "detectPan:")
        
        self.gestureRecognizers = [panRecognizer]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func detectPan(recognizer: UIPanGestureRecognizer) {
        
        var translation = recognizer.translationInView(self.superview!)
        
        self.center = CGPointMake(lastLocation.x + translation.x, lastLocation.y + translation.y)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // Promote the touched view
        self.superview?.bringSubviewToFront(self)
        
        // Remember original location
        lastLocation = self.center
    }
}