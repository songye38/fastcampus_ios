import UIKit


let clo = {
    
}

let clo2 = {
    print("dkfjls")
}

clo2()

let clo3 : (Int) -> Int = { num in
    return num

}

let addClosure : (Int, Int) -> Int = { num1, num2 in
    return num1 + num2
}

func someSimpleFunction(clo2 : ()->Void){
    print("함수에서 호출되었음 ")
}

someSimpleFunction()
