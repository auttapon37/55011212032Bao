//
//  ViewController.swift
//  Seque
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String) {
        colorLabel.text = "Co: " + text
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "mySegue") {
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }

}

