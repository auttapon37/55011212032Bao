// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Double = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs", "Milk"]
// var shoppingListExplicit: [String] = ["Eggs", "Milk"]

var shoppingList = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count) item.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas", "Apples"]
shoppingList

if (onSaleInferred){
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

let possibleTipsInferred = [0.15, 0.18, 0.20]
let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
var numberOfItem = possibleTipsExplicit.count

println("\(numberOfItem)")

var array1 = ["abc", "bcd", "cdf"]
for (var i=0; i < array1.count; i++){
    println(array1[i])
}

var array2 = ["a", "b", "c"]
for str in array2 {
    println(str)
}

var airport: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airport.isEmpty {
    println("The airport dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}

println("The airports dictionary contains \(airport.count) items.")

airport["LHR"] = "London"

airport["LHR"] = "London Heathrow"

if let oldValue = airport.updateValue("Dublin International",  forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}