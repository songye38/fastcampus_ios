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

//copy type  --> 각자 값을 가지고 있기에 같이 다름
personStruct2.firstName = "joon"
print(personStruct1.firstName)
print(personStruct2.firstName)

print("------------------------------")

//reference type---> 같은 것을 가리키기에 결과가 같음
personClass2.firstName = "joon"
print(personClass1.firstName)
print(personClass2.firstName)


print("------------------------------")
//아예 새로운 인스턴스를 할당함
//새로운 인스턴스를 가리킴

personClass2 = PersonClass(firstName: "songye", lastName: "Park")
print(personClass1.firstName)
print(personClass2.firstName)


print("------------------------------")
personClass1 = personClass2
print(personClass1.firstName)
print(personClass2.firstName)



