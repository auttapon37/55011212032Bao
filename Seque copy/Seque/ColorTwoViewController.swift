//
//  ColorTwoViewController.swift
//  Seque
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = ""

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
        
    }
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colorString

        // Do any additional setup after loading the view.
    }
    
}
