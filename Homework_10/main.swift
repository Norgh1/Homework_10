//
//  main.swift
//  Homework_10
//
//  Created by Nor Gh on 24.05.22.
//

import Foundation

print("Hello, Function lesson!")

//Home Work 10_1
//Mark: Person name | Phone number

func nameAndPhoneNumber(name:String = "test", phoneNumber:String = "077xxxxxx") ->String{
    let personinformation = (name + "\t" + phoneNumber)
    return personinformation
}
print(nameAndPhoneNumber())
print(nameAndPhoneNumber(name: "Anna", phoneNumber: "077111222"))

//Home Work 10_2
// Mark: Arithmetic mean of those numbers

func arithmaticInt(argument:Int...) ->Int{
    var result:Int = Int()
    for number in argument {
        var value:Int = Int()
        value += number
        result = value / argument.count
    }
    return result
}

//Home Work 10_3
//Mark: will take first character of given string.

func takeFirstCharacter(variadicString:String...) ->String {
    var myResiultWill:String = String()
    for char in variadicString{
        myResiultWill.append(char[char.startIndex])
    }
    return myResiultWill
}
print(takeFirstCharacter(variadicString: "sdfdsf","fsdfs","gtrthge"))

//Home Work 10_4
//Mark: acept [Int]... return Set<Int>

func retunSetInt(argument:[Int]...) -> Set<Int>{
    var returnMySet:Set<Int> = []
    for number in argument{
        var emptyArray:[Int] = []
        emptyArray += number
        for item in emptyArray {
            returnMySet.insert(item)
        }
    }
    return returnMySet
}
print(retunSetInt(argument: [1,3,4,5,6],[324,547,4567],[43656]))

//Home Work 10_5
//Mark: changin places of two variables value

var variable = 90
var variableNewValue = 10

func changePlaceOfVariable(a: inout Int, b: inout Int){
    let tempry = a
    a = b
    b = tempry
}
print(changePlaceOfVariable(a: &variable, b: &variableNewValue))
print(variableNewValue)
print(variable)

//Home Work 10_6
//Mark: append new value after end of first argument

var hello = "Welcome"
var gitc = "Messege"

func appendStrAfterEndText(text: inout String, endText: inout String) ->String{
    var returnWelcomeMessege:String = String()
    returnWelcomeMessege = text.appending(endText)
    return returnWelcomeMessege
}
print(appendStrAfterEndText(text: &hello, endText: &gitc))

//Home Work 10_7
//Mark: insert value in startIndex given at "text" argument

func appendStrAfterStartText(text: inout String, startText: inout String) ->String{
    text.insert(contentsOf: startText, at: text.startIndex)
    return text
}
print(appendStrAfterStartText(text: &hello, startText: &gitc))


//Home Work 10_8
//Mark: insert in specefic index (offsetBye)

func appendStrInTop(text: inout String, midText: inout String) ->String{
    let location = text.index(text.startIndex, offsetBy: text.count / 2)
    text.insert(contentsOf: midText, at:location )
    return text
}
print(appendStrInTop(text: &hello, midText: &gitc))
