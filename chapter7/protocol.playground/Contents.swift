import UIKit

//
//let store1 = (x : 3, y: 5, name : "gs")
//let store2 = (x : 4, y: 6, name : "seven")
//let store3 = (x:1, y: 7, name : "cu")
//
//func distance(current : (x : Int, y: Int), target : (x : Int, y: Int))-> Double{
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX * distanceY * distanceY)
//    return distance
//}
//
//let myLocation = (x : 2, y: 2)
//let stores = [store1, store2, store3]




struct Lecture : CustomStringConvertible {
    var description: String {
        return "Title : \(name) Instructable : \(instructor)"
    }
    let name : String
    let instructor : String
    let numOfStudent : Int
}

func printLectureName (lectures : [Lecture], from instructor : String){
    var lectureName = ""
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.instructor
        }
    }
    print(lectureName)
}

let let1 = Lecture(name : "ios",instructor: "joon",numOfStudent: 24)
let let2 = Lecture(name : "basic",instructor: "jeck",numOfStudent:24)
let let3 = Lecture(name :"python",instructor: "songye",numOfStudent:14)

let lectures = [let1,let2,let3]
printLectureName(lectures: lectures, from: "songye")

print(let1)
