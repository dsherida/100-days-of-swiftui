import UIKit

// Closures

let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters in a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

// One of the differences between functions and closures
// is that you don’t use parameter labels when running closures.
driving2("London")

// Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// Closures as parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax

travel() {
    print("Trailing closure syntax example!")
}

travel {
    print("You can ommit the parens since it's the only parameter!")
}
