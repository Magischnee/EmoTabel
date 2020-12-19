import UIKit

//it allow us to create a instance(not class) that should have all these
//properties by our protocol
protocol Identify {
    var id: Int {get set}
    func whatIsYourID()
}
protocol Name {
    var name: String {get set}
    func whatIsYourName()
}
protocol Human: Name, Identify {}
struct Person: Identify {
    func whatIsYourID() {
    }
    
    var id: Int
}
struct Animal: Identify {
    func whatIsYourID() {
    }
    
    var id: Int
}
struct City: Identify {
    func whatIsYourID() {
    }
    
    var id: Int
}
struct Humans: Human{
    func whatIsYourName() {
    }
    
    func whatIsYourID() {
    }
    
    var name: String
    var id: Int
}

//here we can make function more flexible by define other structures with
//the protocol. So now this function can accept every Identify protocol object
//and swift will guarantee us that ALL identify objects have id property
func displayMyId(instance: Identify) -> String {
    return "My ID is \(instance.id)"
}

extension String {
    func doubleString() -> String {
        return self + self
    }
    var isOddString: Bool  {
        return self.count % 2 == 0
    }
}

var abc = "abc"
abc.doubleString()
abc.isOddString
abc.uppercased()

var array = [1,2,3]
var set = Set([1,2,3])
extension Collection {
    func printCount(){
        print("There are \(self.count) items in this \(type(of: self))")
    }
}
array.printCount()
set.printCount()

protocol Greetings {
    var greet: String {get set}
    func greeting()
}

extension Greetings {
    func greeting(){
        print("My greet word is \(greet).")
    }
}
struct Hello: Greetings{
    var greet: String
}
var greeti = Hello(greet: "hello")
greeti.greeting()
