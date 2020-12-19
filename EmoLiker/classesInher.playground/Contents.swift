import UIKit

class Person{
    var name: String
    var surname: String
    
    init (name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    func battlecry(){
        print("suda")
    }
}


var me = Person(name: "maxim", surname: "vainikka")

final class Maxim: Person {
    init(surname: String){
        //we know that the name of the class maxim will always be maxim, so we can
        //make a new initializer that needs only surname property
        super.init(name: "maxim", surname: surname)
    }
    override func battlecry() {
        print("domoi HbIA")
    }
}
//swift ask us to call super.init inside child class to prevent problems after inheritance
var me2 = Maxim(surname: "vainikka")
me.battlecry()
//will print suda
me2.battlecry()
//will print domoi HbIA
var me2Copy = me2
me2Copy.surname = "not vainikka"
print(me2.surname)
//as me2 and me2Copy are using the same object in memory,
me2.surname = "again vainikka"
print(me2.surname)

class deInitExample {
    var intick = 1
    
    init() {
        print("\(intick) is not my lucky number")
    }
    func luckyNumber() {
        print("\(intick + 2) is not my lucky number")
    }
    deinit {
        print("who knows my real lucky number")
    }
}

for _ in 1...5{
    let lucky = deInitExample()
    lucky.luckyNumber()
}


class greet {
    var greet = "hello"
}
var greetings = greet()
print(greetings.greet)
greetings.greet = "traveller"
print(greetings.greet)

