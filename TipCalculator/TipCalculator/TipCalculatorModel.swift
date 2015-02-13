//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
class TipCalculatorModel {

    //2
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total/(taxPct+1)
        }
    }
    //3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) -> (tipAmp:Double,total:Double) {
        let tipAmt = subtotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt,finalTotal)
    }
    
    //1
    func returnPossibleTips() -> [Int: (tipAmp:Double, total:Double)] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        //2
        var retval = Dictionary<Int,(tipAmt:Double, total:Double)>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

//6
//let tipCalc = TipCalculatorModel(total: 33.25, taxPct:0.06)
//tipCalc.returnPossibleTips()
