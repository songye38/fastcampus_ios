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
//var twntithItem = evenNumbers[19] //fatal error

let firstThree = evenNumbers[0...2] //get 0,1,2 using range

//can check if there is specific value in an array
evenNumbers.contains(3)
evenNumbers.contains(4)

//특정 인덱스에 원하는 값을 삽입할 수도 있음
evenNumbers.insert(0,at :0)
evenNumbers

//remove all elemenets
//evenNumbers.removeAll()
//evenNumbers = []

//remove specific elements
evenNumbers.remove(at: 0)
evenNumbers[0] = -2
evenNumbers[0...2] = [-2,0,2]

//swap using index
evenNumbers.swapAt(0,9)

//looping

//for num in evenNumbers {
//    print(num)
//}

for (index,num) in evenNumbers.enumerated(){
    print(index,num)
}

//앞의 세개를 없애는 함수
let numbers = evenNumbers.dropFirst(3) //원래것은 건들이지 않고 세개를 없애고 새로운 배열을 반환해준다.
evenNumbers
numbers

let lastNumebrs = evenNumbers.dropLast(1)
lastNumebrs

//앞에 세개만 가져오고 싶을 때
let fistItems = evenNumbers.prefix(3)
fistItems

let lastItems = evenNumbers.suffix(3)
lastItems


//꼭 알아야 하 것들

/*
 isEmpty
 count
 evenNumbers[index]
 
 for (index,num) in evenNumbers.enumerated(){
     print(index,num)
 }
 
 */
