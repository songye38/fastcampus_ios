import UIKit


struct PersonStruct {
    var firstName : String
    var lastName : String
    
    init(firstName : String, lastName : String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName : String { //computed property
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName : String
    var lastName : String
    
    init(firstName : String, lastName : String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName : String { //computed property
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() -> Void {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "joon"
print(personStruct1.firstName)
print(personStruct2.firstName)

print("------------------------------")

personClass2.firstName = "joon"
print(personClass1.firstName)
print(personClass2.firstName)

