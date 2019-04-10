import UIKit
var firstName: String?
firstName = "I am cuong"
var age: Int?

class Person {
    var firstName: String
    var age: Int
    init(firstName: String , age: Int) {
        self.firstName = firstName
        self.age = age
    }
    func isOver18() -> Bool {
        return age > 18
    }
}
func generateDictionary() -> [String : Any] {
    return [
        "firstName": "John",
        "age": 19
    ]
}

let dictionary = generateDictionary()
if let userAge = dictionary["age"] as? Int {
    print("The user age is : \(userAge)")
} else {
    
    print("Could not access the user age.")
}

// Optional Chaining

let person = Person(firstName: "cuong", age: 22)
print(person.isOver18())









