//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    func refreshUI(){
        //1
        totalTextField.text = String(format: "%0.2f",tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        //3
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        //4
        resultsTextView.text = ""
    }

    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    @IBAction func CalculatorTapped(sender: AnyObject) {
        //1
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        //2
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        //3
        for (tipPct, tipVavue) in possibleTips {
            //4
            results += "\(tipPct)%: \(tipVavue)\n"
        }
        ///////////sort///////
        var keys = Array(possibleTips.keys)
        sort(&keys)
        for tipPct in keys {
            let tipValue = possibleTips[tipPct]!
            let prettyTipValue = String(format: "%.2f", tipValue)
            results += "\(tipPct)%: \(prettyTipValue)\n"
        }
        //////////////////////
        
        //5
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChange(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value)/100
        refreshUI()
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    

}

