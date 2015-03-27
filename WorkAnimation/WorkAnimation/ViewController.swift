//
//  ViewController.swift
//  WorkAnimation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    @IBAction func animateButtonPressed(sender: AnyObject) {
        // Create and add a colored square
        let coloredSquare = UIView()
        
        // set background color to blue
        //coloredSquare.backgroundColor = UIColor.blueColor()
        
        //coloredSquare.frame = CGRect(x:0, y:120, width:50, height:50)
        
        //self.view.addSubview(coloredSquare)
        
        /////////////////////
        UIView.animateWithDuration(1.0, animations: {
            
            // animate color change and position
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            
            }, completion: { animationFinished in
                
                // when complete, remove the square from the parent view
                coloredSquare.removeFromSuperview()
                
        })
        ///////////////////////
        let numberOfFish = Int(self.numberOfFishSlider.value)
        for loopNumber in 0...numberOfFish {
            
            // set up some constants for the animation
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(80))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(450))+20
            
            // create the fish and add it to the screen
            let fish = UIImageView()
            fish.image = UIImage(named: "turtle.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
                    
            })
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        /*coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(coloredSquare)
        
        UIView.animateWithDuration(1.0, animations:{
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            })
        ////////////////
        
        ////////////////
        //let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(coloredSquare)
        //…and switch to using named constants for size and yPosition.
            
            // set up some constants for the square
        let size : CGFloat = 50
        let yPosition : CGFloat = 120
        
        // create the square using these constants
        // in this example I've also used the Objective-C convention for making the CGRect
        // but I could have used CGRect(x:0, y:yPosition, width:size, height:size) like we've done previously - they are equivalent
        //let coloredSquare = UIView()
        coloredSquare.backgroundColor = UIColor.blueColor()
        coloredSquare.frame = CGRectMake(0, yPosition, size, size)
        self.view.addSubview(coloredSquare)
        
        ///////////
        UIView.animateWithDuration(1.0, animations: {
            
            // animate color change and position
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            
            }, completion: { animationFinished in
                
                // when complete, remove the square from the parent view
                coloredSquare.removeFromSuperview()
                
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()*/
        // Dispose of any resources that can be recreated.
    }


}

