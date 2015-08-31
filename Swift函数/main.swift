//
//  main.swift
//  Swift函数
//
//  Created by 徐继垚 on 15/8/27.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

import Foundation

//println("Hello, World!")


func sayHello(personName: String) ->String {
    
    let myName = "Hello my name is " + personName + "!"
    
    return myName
    
}


let name = sayHello("xujiyao")
println(name)


func halfOpenRangeLength(start: Int , end: Int ) ->Int{
    
    let legth = end - start
    
    return legth

}


let numbers = halfOpenRangeLength(12, 21323)
println(numbers)

func sayHelloWorld() -> String{
    return "hello world"
}

println(sayHelloWorld())


func sayHelloWithNameOrWords(personName: String , alreadyGreeted: Bool) ->String{
    
    if alreadyGreeted {
        
        return sayHello(personName)
        
    }
    else
    {
        return sayHelloWorld()
    }
    
}


println(sayHelloWithNameOrWords("xujiyao", true))

func sayGoodbye(personName: String){
    
    println("goodBye,\(personName)")
}

sayGoodbye("xujiyao")


func printAndCount(stringToPrint: String) -> String {
    
    println(stringToPrint)
    
    return stringToPrint.substringToIndex(stringToPrint.startIndex)
}


printAndCount("hello, world")


func minMax(array: [Int]) -> (min: Int , max: Int)?{
    
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        
        if value < currentMin {
            currentMin = value
        }
        else if value > currentMax {
            currentMax = value
        }
        
    }
    return(currentMin, currentMax)
    
}

if let bounds = minMax([34,324,324,324,324,234,123,345,67,]){
    
    println("min is \(bounds.min) max is \(bounds.max)")
}


func sayHello(to person: String , and otherPerson: String){
    
    println("leve \(person) along \(otherPerson)")
    
}

sayHello(to: "xujiyao", and: "xuejimiao")

func someFunction(_ parameterWithDefault: Int = 12) {
  
    
    println(parameterWithDefault)
    
}

someFunction(6)
someFunction()


func arithmeticMean(numbers: Double...) -> Void{
    var total: Double = 0
    for number in numbers {
        total += number
    }
    println(total / Double(numbers.count))
}

arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)




func addTwoInts(a: Int, b: Int) -> Void {
 println(a + b)
}
func multiplyTwoInts(a: Int, b: Int) -> Void {
   println(a * b)
}
addTwoInts(1, 2)

var mathFunc :(Int , Int) -> Void = addTwoInts

mathFunc(1 , 4)

mathFunc = multiplyTwoInts

mathFunc(1 , 4)

func printMathResult(mathFunc:(Int , Int) -> Void , a: Int , b: Int){
    
    mathFunc(a, b)
}



printMathResult(addTwoInts, 2 ,5)



func chooseSetFunction(backwards: Bool) ->(Int) -> Int {
    
    func stepForward(input: Int) ->Int{
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    return backwards ? stepBackward : stepForward
}


var currentValue = 3
let moveNearerToZero = chooseSetFunction(currentValue > 0)

while currentValue != 0{
    println("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
   
}













