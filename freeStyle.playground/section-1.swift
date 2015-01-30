// Playground - noun: a place where people can play

import UIKit


class query {
    var id = [1,2,3]
    var name = ["aaa","bbb","ccc"]
    var age = ["12","25","18"]
    var gpa = [3.25,2.75,3.01]
    
    
    func select(g:Double) -> String{
        var data:String=""
        for(var i=0;i < name.count;i++){
            if(g >= gpa[i]){
                data=data+name[i]+" "
            }
        }
        return data
    }
    /*func del(i:Int){
        name[i]=nil
        age[i]=nil
        gpa[i]=nil
    }*/
}

let aaa = query()

aaa.select(3.00)
//aaa.del(1)