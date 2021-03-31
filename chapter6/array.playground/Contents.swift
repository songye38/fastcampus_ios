import UIKit


//how to make array in Swift
var evenNumbers : [Int] = [2,4,6,8]
let evenNumbers2 : Array<Int> = [2,4,6,8]

//how to append values to array
evenNumbers.append(10)
evenNumbers += [12,14,16]
evenNumbers.append(contentsOf: [18,20])

//can check if array is empty or not
let isEmpty = evenNumbers.isEmpty

//check how many elements in an array?
let count = evenNumbers.count

//check the first element in an array
let firstItem = evenNumbers.first //int optional로 반환
let lastItem = evenNumbers.last //can be an item or nil

//use optional with array.first
if let firstElement = evenNumbers.first {
    print("first item is \(firstElement)")
}else{
    print("nil")
}

//get min and max value in an array return type is int optional type
evenNumbers.min()
evenNumbers.max()

//get an item with index in an array
var tenthItem = evenNumbers[9]
var twntithItem = evenNumbers[19] //fatal error

