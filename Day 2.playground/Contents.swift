import UIKit

// arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles: [String] = [john, paul, george, ringo] // <- with type annotations

beatles[1]
beatles[0]
// beatles[-1] // <- this crashes

// sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) // <- duplicates are ignored

// tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first
// name = (first: "Justin", age: 25) // <- cannot asign value error

var fibonacci = (1, 1, 2, 3, 5, 8)
fibonacci.4

// arrays vs sets vs tuples
// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville") // tuple
// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"]) // set
// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"] // array

// dictionaries
let heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"] // <- read data out of dictionary

// dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]

favoriteIceCream["DUMMY"]

favoriteIceCream["Charlotte", default: "Default Test"]

// empty collections
var teams = [String: String]()

teams["Paul"] = "Red"

var _results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var _results2 = Array<Int>()

// enums
let result = "failure"

let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// enum associated values

enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football")

// enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1 // <- count now starts at
    case venus
    case earth
    case mars
}

let mercury = Planet(rawValue: 0)
mercury?.rawValue

