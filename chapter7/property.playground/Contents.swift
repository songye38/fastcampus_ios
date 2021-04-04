import UIKit


struct Person{
    var firstName : String {
        
        //값이 언제바뀌는지 알아챌 수 있다.
        willSet {
            print("willSet : \(firstName) --> \(newValue)")
        }
        didSet {
            print("didSet : \(oldValue) --> \(firstName)")
        }
    }
    var lastName : String
    
    lazy var isPopular : Bool  = {
        if fullName == "Jay Park"{
            return true
        }else{
            return false
        }
    }()
    
    var fullName : String {  //computed property => read only
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
    static let isAlien : Bool = false  //type property
}

//인스턴스 만들기
var person1 = Person(firstName: "songye", lastName: "park")


//stored property
person1.firstName
person1.lastName

person1.firstName = "Jim"
person1.lastName = "kim"

person1.firstName
person1.lastName

Person.isAlien //타입자체에 있는 프로퍼티



//computed property

person1.fullName = "Jay Park"

person1.firstName
person1.lastName

person1.isPopular


