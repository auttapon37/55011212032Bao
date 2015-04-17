//
//  ViewController.swift
//  WorkAnimation2
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    //let fish = UIImageView()

    @IBAction func animateButtonTapped(sender: AnyObject) {
        // create a 'tuple' (a pair or more of objects assigned to a single variable)
        let views = (frontView: self.redSquare, backView: self.blueSquare)
        
        // set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
            // remove the front object...
            views.frontView.removeFromSuperview()
            
            // ... and add the other object
            self.container.addSubview(views.backView)
            
            }, completion: { finished in
                // any code entered here will be applied
                // .once the animation has completed
        })
        ////////////
        // first set up an object to animate
        // we'll use a familiar red square
        
        /*let square = UIView()
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor = UIColor.redColor()
        
        // add the square to the screen
        self.view.addSubview(square)
        
        // now create a bezier path that defines our curve
        // the animation function needs the curve defined as a CGPath
        // but these are more difficult to work with, so instead
        // we'll create a UIBezierPath, and then create a
        // CGPath from the bezier when we need it
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        // create a new CAKeyframeAnimation that animates the objects position
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        anim.path = path.CGPath
        
        // set some more parameters for the animation
        // this rotation mode means that our object will rotate so that it's parallel to whatever point it is currently on the curve
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        
        // we add the animation to the squares 'layer' property
        square.layer.addAnimation(anim, forKey: "animate position along path")*/
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // set container frame and add to the screen
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        // set red square frame up
        // we want the blue square to have the same position as redSquare
        // so lets just reuse blueSquare.frame
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        //self.blueSquare.frame = redSquare.frame
        self.blueSquare.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        
        // set background colors
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        // for now just add the redSquare
        // we'll add blueSquare as part of the transition animation
        self.container.addSubview(self.redSquare)
        ////////////
        /*var fish = UIImageView()
        fish.image = UIImage(named: "turtle.png")
        fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(fish)
        
        // angles in iOS are measured as radians PI is 180 degrees so PI × 2 is 360 degrees
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            // animating `transform` allows us to change 2D geometry of the object
            // like `scale`, `rotation` or `translate`
            self.fish.transform = CGAffineTransformMakeRotation(fullRotation)
        })*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

