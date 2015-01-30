// Playground - noun: a place where people can play

import UIKit

class idpass {
    let userpassword: Dictionary<String, String> = ["Bao":"2032","Bear":"2155","Jane":"2042", "Bom":"2025","Nan":"2043"]

    
    func check(name:String) {
        if(userpassword.isEmpty){
            println("Empty")
        }else{
            println("Not empty")
        }
    }
    
    //////////////
    let userInput:String
    let inputPass:String
    
    init(user:String , pass:String){
        self.userInput=user
        self.inputPass=pass
        self.userchang=user
        self.Passchang=pass
    }
    
    func add(user:String,pass:String){
        userpassword[user]=pass
    }
    
    let userchang:String
    let Passchang:String
    
    
    func update(Passchang:String,userchang:String) -> String {
        
        if let old = userpassword.updateValue(Passchang, forKey: userpassword){
        //if let oldvalue = userpassword.updateValue(Passchang, forKey:userchang){
            
            println("The old value for data was \(oldvalue).")
            
        }
    }
    
    func delet(userDel:String) {
      
        userpassword[userDel]=nil
    }
    func search(user:String){
        for(key,value) in userpassword{
            if(key==user){
                println("Yes\(value)")
            }
        }
        
    }
    
    
}

let start = idpass(user: "Bao",pass: "2032")
start.add("tttt",pass :"123456")
start.update("21555", userchang: "Bear")
start.search("Bao")
