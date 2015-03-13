//
//  ViewController.swift
//  Exam1_55011212032
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate {

    @IBOutlet weak var txtSubject: UITextField!
    @IBOutlet weak var txtMid: UITextField!
    @IBOutlet weak var txtGetMid: UITextField!
    @IBOutlet weak var txtKeep: UITextField!
    @IBOutlet weak var txtGetKeep: UITextField!
    @IBOutlet weak var txtFinal: UITextField!
    @IBOutlet weak var txtGetFinal: UITextField!
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    @IBAction func calcGrade(sender: AnyObject) {
        /*var x = txtFinal.text.toInt()!
        var y = txtGetFinal.text.toInt()!
        var z = x+y
        txtSubject.text = String(z)*/
        
        
        var total1 = txtMid.text.toInt()!
        var total2 = txtKeep.text.toInt()!
        var total3 = txtFinal.text.toInt()!
        var sumScore = total1+total2+total3
        
        
        chkScore(sumScore)
        
        
    }
    func chkInput(){
        var a = txtSubject.text
        var b = txtMid.text
        var c = txtGetMid.text
        var d = txtKeep.text
        var e = txtGetKeep.text
        var f = txtFinal.text
        var g = txtGetFinal.text
        if(a==""||b==""||c==""||d==""||e==""||f==""||g==""){
            let m = "กรุณากรอกให้ครบทุกช่อง"
            let alert = UIAlertController(title: "Error", message: m, preferredStyle: .Alert)
            let okBT = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okBT)
            self.presentViewController(alert,animated:true,completion:nil)
        }
    }
    func chkScore(sum:Int){
        if(sum != 100){
            let m = "คะแนนเต็มรวมไม่เท่ากับ 100"
            let alert = UIAlertController(title: "Error", message: m, preferredStyle: .Alert)
            let okBT = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okBT)
            self.presentViewController(alert,animated:true,completion:nil)
            
        }else{
            var m = Double((txtGetMid.text as NSString).doubleValue)
            
            /*var getmid = txtGetMid.text.toInt()!
            var getkeep = txtGetKeep.text.toInt()!
            var getfinal = txtGetFinal.text.toInt()!*/
            
            var getmid = Double((txtGetMid.text as NSString).doubleValue)
            var getkeep = Double((txtGetKeep.text as NSString).doubleValue)
            var getfinal = Double((txtGetFinal.text as NSString).doubleValue)
            
            var score = getmid+getkeep+getfinal
            showscore.text = "คะแนนรวม : "+String(format:"%0.2f",score)
            
            showGrade(Double(score))
            
            // tuple ******************************
            let ran = (one:0.05,two:0.10,three:1.15)
            
            var onee = getmid+getkeep+(getfinal*ran.one)
            var twoo = getmid+getkeep+(getfinal*ran.two)
            var threee = getmid+getkeep+(getfinal*ran.three)
            
            
            one.text = "5% : "+String(format:"%0.2f",onee)+", Grade : "+String(showGrade2(onee))
            two.text = "10% : "+String(format:"%0.2f",twoo)+", Grade : "+String(showGrade2(twoo))

            three.text = "15% : "+String(format:"%0.2f",threee)+", Grade : "+String(showGrade2(threee))

        }
    }
    
    /////////////////////////////////////////////////////
    var sortedKeys:[Int] = []
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return sortedKeys.count
    }
    // UITableViewDataSource methods
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        /*let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel?.text = "\(tipPct)%:"
        cell.detailTextLabel?.text = String(format: "Tip: $%0.2f, Total: $%0.2f",tipAmt,total)*/
        
        return cell
        
    }
    func showGrade(sc:Double){
        switch sc {
        case 0...43.99 : showgrade.text = "F"
            case 44...49.99 : showgrade.text = "D"
            case 50...55.99 : showgrade.text = "D+"
            case 56...61.99 : showgrade.text = "C"
            case 62...67.99 : showgrade.text = "C+"
            case 68...73.99 : showgrade.text = "B"
            case 74...79.99 : showgrade.text = "B+"
            case 80...100 : showgrade.text = "A"
        default : "No Score"
        
        }

    }
    func showGrade2(sc:Double) -> String{
        var g:String = ""
        switch sc {
            case 0...43.99 : g = "F"
            case 44...49.99 : g = "D"
            case 50...55.99 : g = "D+"
            case 56...61.99 : g = "C"
            case 62...67.99 : g = "C+"
            case 68...73.99 : g = "B"
            case 74...79.99 : g = "B+"
            case 80...100 : g = "A"
            default : g = "No Score"
            
        
            
        }
        return g
    }
    @IBOutlet weak var showscore: UILabel!
    @IBOutlet weak var showgrade: UILabel!
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

