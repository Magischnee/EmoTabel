import UIKit

var str = "Hello, playground"

enum Mood {
    case depressed(level: Int)
    case fine(type: Bool)
    case good(reason: String)
}
var good = Mood.good(reason: "Just")
// we can be more precise in our definition

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

func greet(_ names: [String]){
for name in names {
print("\(name) is the greet")
}}
greet([ "Hi", "Hey", "Heya"])

func bumped(action: (String) -> String) {
        print("OH, seems like its a traffic jam")
        let description = action("bull****")
        print(description)
        print("Deal with it EZ")
}
bumped  {
    "Beep beep \($0)"
}
