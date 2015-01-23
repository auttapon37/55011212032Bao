// Playground - noun: a place where people can play

import UIKit


class zoo {
    func dic(name: String) {
        //var animal: [String: String] = ["Tiger": "aaa", "Lion": "bbb"]
        var animal = ["ant","bat","cat","dog"]
        var food = ["fishhh","rattt","fishhh","cattt"]
        var point=0
        for(var i=0;i<animal.count;i++) {
            if(name == animal[i]) {
                let point=i
                println("\(animal[point]) eat \(food[point])")
                break
            }
        }
    }
}

let name=zoo()
name.dic("bat")