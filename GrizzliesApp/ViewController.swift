//
//  ViewController.swift
//  GrizzliesApp
//
//  Created by Mitchell Phillips on 3/31/16.
//  Copyright © 2016 Wasted Potential LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var grizzliesImageView = UIImageView()
    
    var alaskaImageView = UIImageView()
    
    var puckImageView = UIImageView()
    
    var currentAnimation = 0
    
    @IBOutlet weak var tapButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup ImageView
        grizzliesImageView = UIImageView(image: UIImage(named: "grizzlies"))
        grizzliesImageView.frame = CGRect(x: 75, y: 424, width: 200, height: 125)
        
        alaskaImageView = UIImageView(image: UIImage(named: "alaska"))
        alaskaImageView.frame = CGRect(x: 75, y: 20, width: 200, height: 125)
        
        puckImageView = UIImageView(image: UIImage(named: "hockeyPuck"))
        puckImageView.center = self.view.center
        puckImageView.frame.size = CGSizeMake(50, 50)
        
        view.addSubview(grizzliesImageView)
        view.addSubview(alaskaImageView)
        view.addSubview(puckImageView)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
 
    }
    
    func panGesture() {
        
        UIPanGestureRecognizer
    }
}
