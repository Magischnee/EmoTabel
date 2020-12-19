import UIKit

struct Car {
    init () {
        print("beep beep lmao")
    }
}

struct Driver {
    var name: String
    lazy var car = Car()
    
    init(name: String) {
        self.name = name
    }
}

var driverino = Driver(name: "pogChamp")
driverino.car

struct House {
    var name: String
    static var guysInHouse = 0
    
    init(name: String) {
        self.name = name
        House.guysInHouse+=1
    }
}

var guy1 = House(name: "Maxim")
var guy2 = House(name: "Sam")
print(House.guysInHouse)
var guy3 = House(name: "Vik")
print(House.guysInHouse)

struct User {
    static var users = 0
    public var session: String
    private var id: Int
    var name: String
    init(id: Int, name: String, session: String){
    self.id = id
        self.name = name
        self.session = session
        User.users+=1
        
    }
    func showID(){
        print("\(name)`s ID is \(id). Total user count is \(User.users)")
    }
    func whatIsSession(){
        print("current session of \(name) is \(session)")
    }
}
var user = User(id: 0, name: "Maxim", session: "123")
// we will catch an error by print(user.id)
user.showID()
var user2 = User(id: 1, name: "Sam", session: "456")
user2.showID()
user2.whatIsSession()
var user3 = User(id: 1, name: "nil", session: "undefined")
