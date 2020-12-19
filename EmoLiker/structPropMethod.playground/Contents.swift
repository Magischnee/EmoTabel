import UIKit

struct Programming {
    //that is called property
    var language: String
    var isHard: Bool
    
    var difficult: String {
        if isHard{
            return "\(language) is hard"
        }else{
            return "\(language) is not hard"
        }
    }
}

var python = Programming(language: "Python", isHard: false)
print(python.difficult)

struct House {
    var status: String
    var percent: Int {
        didSet{
            //didSet property observer is used only when percent variable changes
           print( "The house status is \(status) and progress is \(percent)%")
        }
    }
}
var house = House(status: "in process", percent: 0)
house.percent = 50
house.percent = 100


struct Salary {
    var monthlySalary: Int
    
    func annualSalary() -> Int {
        return monthlySalary * 12
    }
}

var mySalary = Salary(monthlySalary: 8000)
mySalary.annualSalary()

struct Me {
    var name: String
    
    mutating func anonymusMode(){
        name = "pogChamp"
    }
}
var me = Me(name: "kappa")
me.anonymusMode()


//string is a struct
let string = "phasmophobia"
print(string.sorted())
print(string.uppercased())
//array is a struct also
var array = ["heya", "heyo"]
array.count
array.append("greet")
array.removeFirst()
array.sorted()
