// Playground - noun: a place where people can play

import UIKit

class newzoo {
    let zoo: [String:String] = ["ช้าง":"อ้อย","เสือ":"เนื้อ","ลิง":"กล้วย"]
    
    let input:String
    init(user:String){
        self.input=user
    }
    func add(animal:String,food:String){
        
    }
    func givefood() -> String{
        var ans:String=""
        for(key,value) in zoo {
            if(key==input){
                ans=value
                break
            }else{
                ans="No animal"
            }
        }
        return ans
    }
    
}
let process = newzoo(user: "ช้าง")
process.givefood()