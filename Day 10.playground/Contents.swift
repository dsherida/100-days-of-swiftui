import UIKit

// Classes

// Creating your own classes
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// Class inheritance
final class Poodle: Dog { // <- final means nobody can inherit from this
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    // Override methods
    override func makeNoise() {
        print("Yip!")
    }
}

let poodle = Poodle(name: "PooPoo")
poodle.makeNoise()

//class FinalTest: Poodle { // <- this throws an error
//
//}

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
class Singer2 {
    var name = "Taylor Swift"
    let const = "Boom Chika"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
//taylor.const = "BAD" // <- this throws an error
print(taylor.name)
