// Playground - noun: a place where people can play

import UIKit

class userPasswd {
    let database: [String: String] = ["Bao":"2032","Bear":"2155","Jane":"2042", "Bom":"2025","Nan":"2043"]
    let input:String
    init(user:String) {
        self.input=user
    }
    func process() -> String {
        var answer:String=""
        for(key,value) in database {
            if(key==input) {
                answer=value
            }
        }
        return answer
    }
}

let start = userPasswd(user:"Bao")
start.process()