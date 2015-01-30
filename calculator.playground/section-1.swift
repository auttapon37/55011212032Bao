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
    
    
    
    func plus(first:Double,second:Double) -> String{
        let plus="\(first) + \(second) = \(first+second) "
        return plus
    }
    func minus(first:Double,second:Double) -> String{
        let minus="\(first) - \(second) = \(first-second)"
        return minus
    }
    func mul(first:Double,second:Double) -> String{
        let mul="\(first) * \(second) = \(first*second)"
        return mul
    }
    func div(first:Double,second:Double) -> String {
        let div="\(first) / \(second) = \(first/second)"
        return div
    }
}

let process = cal()
//process.compute(120, second: 14)
process.plus(120, second: 10.5)
process.minus(120, second: 10.2)
process.mul(25.3, second: 126)
process.div(25.3, second: 126)
