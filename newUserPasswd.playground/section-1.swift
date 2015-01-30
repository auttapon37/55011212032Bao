// Playground - noun: a place where people can play

import UIKit

class userpassword {
    var userDB:Dictionary<String,String>= ["bao":"2032","bear":"2155"]
    
    let userInput:String
    let passInput:String
    
    init(user:String,pass:String){
        self.userInput=user
        self.passInput=pass
    }
    
    func add(user:String,pass:String){
        userDB[user]=pass
    }
    
    func update(user:String,pass:String){
        userDB.updateValue(pass, forKey: user)
    }
    
    func del(user:String){
        userDB[user]=nil
    }
    
    func search(user:String) -> String{
        var result:String=""
        for (key,value) in userDB{
            if(key==user){
                result="yes \(user) in database"
                break
            }else{
                result="No \(user) not in database"
            }
        }
        return result
    }
    
}

let process = userpassword(user: "aaa",pass: "bbb")
process.add("ttt", pass: "yyy")
process.update("ttt", pass: "zzz")
process.del("ttt")
process.search("ttt")