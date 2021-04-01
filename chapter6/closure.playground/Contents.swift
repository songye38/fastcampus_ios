import UIKit

//이름이 없는 메소드


//var multiplyClosure : (Int, Int) = { (a : Int, b: Int) -> Int in
//    return a * b
//}

var multiplyClosure : (Int, Int) -> Int = {$0 * $1}
var multiplyClosure2 : (Int, Int) -> Int = { a, b in
    return a * b
}
let result = multiplyClosure(4,5)

func operateTwoNum ( a : Int, b : Int, operation : (Int, Int)-> Int)-> Int{
    let result = operation(a,b)
    return result
}

operateTwoNum(a:4, b:2, operation: multiplyClosure)

//var addClosure = (Int, Int) -> Int = { a, b in
//    return a + b
//}
//
//operateTwoNum(a:4, b:2, operation: addClosure)
//
//operateTwoNum(a: 4, b: 2, {a, b in return a / b})

//인풋도 아웃풋도 없는 이름 없는 메소드
let voidClosure1  : ()-> Void = {
    print("hello world")
}

let voidClosure : (Int, Int) ->Int = { a, b in
    return a + b
    
}

let voidClosure2 = {
    print("hello wolddfjskfljslkdfs")
}


voidClosure1()
voidClosure2()

//closure capturing

var count = 0
let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
count

