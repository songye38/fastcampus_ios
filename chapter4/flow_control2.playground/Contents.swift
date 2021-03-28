import UIKit
import Foundation // 근간이 되는 녀석들

var str = "Hello, playground"


print("while")
var i = 10
while i<10{
    print(i)
    
    if i==5{
        break
    }
    i += 1
}

print("repeat")
var num = 10
repeat{
    print(num)
    num += 1
}while i<10

//for loop
let closedRange = 0...10       //0~10
let halfClosedRange = 0..<10   //0~9

var sum = 0
for i in halfClosedRange {
    print("------>\(i)")
    sum += i
}

print("total sum is \(sum)")

var sinValue : CGFloat = 0

for i in closedRange {
    sinValue = sin(CGFloat.pi / 4 * CGFloat(i))
}


let name = "songye park"

for _ in closedRange {  //쓰지 않는 변수 같은 경우는 _로 대체 가능하다.
    print(name)
}

for i in closedRange {
    if i % 2 == 0 {
        print(i)
    }
}

print("plus where")
for i in closedRange where i % 2 == 0{
    print(i)
}

//3만 빼고 출력하고 싶을 때

for i in closedRange {
    if i == 3 {
        continue //continue가 나오면 밑에는 무시하고 다시 한바퀴 돌아라
    }
    print(i)
}

//for loop를 중첩으로 사용하기

for i in closedRange {
    for j in closedRange {
        print("\(i) X \(j) = \(i * j)")
    }
}

//switch

let num1 = 10
switch num1 {
case 0:
    print("--> 0 입니다.")
case 0...10:
    print("0부터 10사이 입니다.")
case 10:
    print("--> 10 입니다.")
default :
    print("나머지입니다. ")
}

//string type swtich

let pet = "bird"
switch pet {
case "dog", "cat", "bird":
    print("집동물이네요?")
default:
    print("나머지입니다.")
}

//switch + where 함께 사용하기


let number =  5
switch number {
case _ where number % 2 == 0 :
    print("짝수입니다.")
default:
    print("홀수입니다.")
}

//switch 심화 + tuple
let coordinate = (x:10, y:10)
switch coordinate {
case (0,0):
    print("원점이네요.")
case (let x,0):
    print("x축이네요 \(x)")
case (0,let y ):
    print("y축이네요 \(y)")
case (let x, let y) where x==y :
    print("x==y")
case (let x, let y):
    print("x,y = \(x),\(y)")
}
