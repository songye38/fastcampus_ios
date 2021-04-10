import UIKit


struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student : Person {
    var grades: [Grade] = []
}


//make instance

let jay = Person(firstName: "Jay", lastName:"Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jason.firstName
jay.firstName

jason.printMyName()


let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)

jason.grades.count


//상속 더 깊게 이해하기
class StudentAthelet : Student {
    var minimumTrainingTime : Int  = 2
    var trainedTime : Int = 0
    
    func train(){
        trainedTime += 1
    }
}

// 운동선수인데 축구선수
class FootballPlayer : StudentAthelet {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2 //한번 운동할 때 마다 2시간씩 운동을 한다.
    }
}

// Person -> Student -> Athelete -> Football Player

var athelete1 = StudentAthelet(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")


athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

athelete2.footballTeam

athelete1.train()
athelete1.trainedTime

athelete2.train()
athelete2.trainedTime

athelete1 = athelete2 as StudentAthelet
athelete1.train()
athelete1.trainedTime















//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student: Person {
//    var grades: [Grade] = []
//}
//
//
//let jay = Person(firstName: "Jay", lastName: "Lee")
//let jason = Student(firstName: "Jasson", lastName: "Lee")
//
//jay.firstName
//jason.firstName
//
//jay.printMyName()
//jason.printMyName()
//
//let math = Grade(letter: "B", points: 8.5, credits: 3)
//let history = Grade(letter: "A", points: 10.0, credits: 3)
//
//jason.grades.append(math)
//jason.grades.append(history)
////jay.grades
//
//jason.grades.count
//
//
//
//// 학생인데 운동선수
//class StudentAthlete: Student {
//    var minimumTrainingTime: Int = 2
//    var trainedTime: Int = 0
//
//    func train() {
//        trainedTime += 1
//    }
//}
//
//// 운동선인데 축구선수
//class FootballPlayer: StudentAthlete {
//    var footballTeam = "FC Swift"
//
//    override func train() {
//        trainedTime += 2
//    }
//}
//
//// Person > Student > Athelete > Football Player
//
//var athelete1 = StudentAthlete(firstName: "Yuna", lastName: "Kim")
//var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")
//
//athelete1.firstName
//athelete2.firstName
//
//athelete1.grades.append(math)
//athelete2.grades.append(math)
//
//athelete1.minimumTrainingTime
//athelete2.minimumTrainingTime
//
////athelete1.footballTeam
//athelete2.footballTeam
//
//athelete1.train()
//athelete1.trainedTime
//
//athelete2.train()
//athelete2.trainedTime
//
//
//
//athelete1 = athelete2 as StudentAthlete
//athelete1.train()
//athelete1.trainedTime
//
//
//if let son = athelete1 as? FootballPlayer {
//    print("--> team:\(son.footballTeam)")
//}
