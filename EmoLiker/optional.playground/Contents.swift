import UIKit

var str = "Hello, playground"

//safety unwrap with if let structure

var abc: String? = nil

if let unwrapped = abc {
    print("\(unwrapped.count) count of the letters in the variable abc")
}else{
    print("probably nil variable")
}
//if the variable name has a name, we will unwrap it as common string
//either else code is gonna run
func unwrap(string: String?){
    guard let unwrapped2 = string else {
        print("this variable has no value.")
        return
    }
    print("Hello, \(unwrapped2)")
}
unwrap(string: abc)
//if we sure that something can be unwrapped
//we can force unwrap it by adding !
let abcd = "2"
let abcde = "abc"
let num = Int(abcd)!
let num2 = Int(abcd)
print(type(of: num))
print(type(of: num2))
//we cant unwrap abcde, it will provide us with an error

var kappa: String! = nil
// print(kappa.count) it will show us an error
kappa = "abc"
print(kappa.count)
//but now everything is OK


func user(for name: String) -> String? {
    if name == "maxim"{
        return "best name"
    }else{
        return nil
    }
}

let maxim = user(for: "maxim") ?? "worst name"
//anyway result won't be optional
print(maxim)

let array: [String] = ["abc", "cde", "qwe"]
let emptyArray = [] as [String]
//method uppercased() will execute only if the value exists in the array
var word = array.first?.uppercased()
var noWord = emptyArray.first?.uppercased()

enum isGoodName: Error {
    case bad
}

func isName(_ name: String) throws -> Bool {
    if name == "vlad" {
        throw isGoodName.bad
    }
    return true
}
do {
    try isName("maxim")
    print("Das ist perfekt name")
}catch{
    print("meh, not really")
}

if let result = try? isName("vlad"){
    print("\(result) is good name")
}else{
    print("bad name")
}

try! isName("maxim")
print("good name")

//if uppercased name is MAXIM = thats good
//if isnt = return nil
struct Me {
    var name: String
    
    init?(name: String) {
        if name.uppercased() == "MAXIM" {
            self.name = name
        }else{
            return nil
        }
    }
}

class Animal {}
class clown: Animal{}
class cat: Animal{
    func doSmth(){
        print("meow")
    }
}

let pets = [clown(), cat(), cat(), cat()]

for pet in pets{
    if let pet = pet as? cat{
        pet.doSmth()
    }
}
