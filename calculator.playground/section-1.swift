// Playground - noun: a place where people can play

import UIKit

class cal {
    func compute(first:Int,second:Int) {
        var plus = 0
        var minus = 0
        var mul=0
        var div=0
        
        plus=first+second
        minus=first-second
        mul=first*second
        div=first/second
    }
}

let process = cal()
process.compute(125, second: 14)