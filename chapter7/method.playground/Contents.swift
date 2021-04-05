import UIKit

struct Lecture {
    var title : String
    var maxStudents : Int = 10
    var numOfRegistered : Int = 0
    
    func remainSeats()->Int {
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    
    mutating func register(){ //stored property를 변경시키는 경우 'mutating'키워드를 넣어야 한다.
        numOfRegistered += 1
    }
    
    //type property
    static let target : String = "Anybody want to learn something"
    
    static func 소속학원이름()-> String {
        return "fastcampus"
    }
    
    
}


var lecture = Lecture(title: "IOS Basic")


lecture.remainSeats()
lecture.register()
lecture.remainSeats()

Lecture.target
Lecture.소속학원이름()

//extension으로 확장하기

struct Math {
    static func abs(value: Int)->Int {
        if value > 0 {
            return value
        }else{
            return -value
        }
    }
}

Math.abs(value:-20)

extension Math {
    static func square(value : Int)->Int{
        return value * value
    }
    static func half(value : Int)->Int{
        return value / 2
    }
}

let value : Int = 3

extension Int {
    func square()->Int{
        return self * self
    }
    func half()->Int{
        return self/2
    }
}

value.square()
value.half()
