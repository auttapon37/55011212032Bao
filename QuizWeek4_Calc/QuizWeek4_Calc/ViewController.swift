//
//  ViewController.swift
//  QuizWeek4_Calc
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var sum1=0,sum2=0,sum3=0
    @IBAction func oneBT(sender: AnyObject) {
        
        sum1 = sum1 + 1
        oneLabel.text = String(sum1)
        
    }

    @IBAction func twoBT(sender: AnyObject) {
        sum2 = sum2 + 2
        twoLabel.text = String(sum2)
    }
    
    @IBAction func threeBT(sender: AnyObject) {
        sum3 = sum3 + 3
        threeLabel.text = String(sum3)
    }
    
    @IBAction func resetBT(sender: AnyObject) {
        oneLabel.text = "0"
        twoLabel.text = "0"
        threeLabel.text = "0"
        sum1=0
        sum2=0
        sum3=0
    }
    
    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
}

