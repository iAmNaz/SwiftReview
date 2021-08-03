import UIKit

enum LightSwitch: Int {
    case on = 1
    case off = 0
}

enum DaysOfTheWeek: String {
    case monday = "Monday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
    case thursday = "Thursday"
    case friday = "Friday"
    case saturday = "Saturday"
    case sunday = "Sunday"

    func today() {
        print(self.rawValue)
    }
}

let today = DaysOfTheWeek.tuesday

let todayString = today.rawValue

today.today()

if case .tuesday = today {
    print("it's tuesday!!!")
}

// mon - fri -> Workday!!!
// Sat - Sun -> Weekend!!!

func describeWeekday(day: DaysOfTheWeek) {
    switch day {
    case .saturday, .sunday:
        print("Weekend!!!")

    default:
        print("Weekdays!!!")
    }
}
// 0 - 10
//3 test cases
describeWeekday(day: .monday)


protocol MobileDeveloper {
    func writeCode()
    func publish()
    var programmingLanguage: String { get set }
    var type: String { get set }
}

class IOSDeveloper: MobileDeveloper {
    var type = "iOS"
    var programmingLanguage = "Swift"
    
    func writeCode() {
        print("\(type) developer is writing code...")
    }
    
    func publish() {
        print("\(type) developer is publishing the app...")
    }
}

//let iosDev = IOSDeveloper()
//iosDev.writeCode()
//iosDev.publish()

struct AndroidDeveloper: MobileDeveloper {
    var programmingLanguage = "Kolin"
    var type = "Android"
    
    func writeCode() {
        print("\(type) developer is writing code...")
    }
    
    func publish() {
        print("\(type) developer is publishing the app...")
    }
}

//let androidDev = AndroidDeveloper()
//androidDev.writeCode()
//androidDev.publish()

protocol Vehicle {
    var make: String! { get set}
    var model: String! { get set}
}

class Car: Vehicle {
    var make: String!
    var model: String!
}

class DevTeam {
    var mobileDeveloper: MobileDeveloper!
    
    init(dev: MobileDeveloper) {
        self.mobileDeveloper = dev
    }
    
    func startDevelopment() {
        mobileDeveloper.writeCode()
        mobileDeveloper.publish()
    }
}

let iosDevTeam = DevTeam(dev: IOSDeveloper())
iosDevTeam.startDevelopment()


let androidDevTeam = DevTeam(dev: AndroidDeveloper())
androidDevTeam.startDevelopment()


protocol PhysicalAttributes {
    var height: Float! { get set }
    var skinColor: String! { get set }
}

protocol Skills {
    var writing: String! { get set }
    var communication: String! { get set }
}
//implement/ conform
class SoftwareDeveloper: Skills {
    var writing: String!
    var communication: String!
}

class TechWriter: Skills {
    var writing: String!
    var communication: String!
}

class Model: PhysicalAttributes {
    var height: Float!
    var skinColor: String!
}

class Manager: PhysicalAttributes, Skills {
    var writing: String!
    var communication: String!
    var height: Float!
    var skinColor: String!
}

typealias ManagementAttributes = (PhysicalAttributes & Skills)
typealias Pogi = PhysicalAttributes

func hire(candidate: ManagementAttributes) {
    
}

hire(candidate: Manager())

struct Person {
    var name: String!
    var cache: String!
}

extension Person: Skills {
    var writing: String! {
        get {
            return cache
        }
        set {
            cache = newValue
        }
    }
    
    var communication: String! {
        get {
            return cache
        }
        set {
            cache = newValue
        }
    }
    
    func run() { }
}

let person = Person()

person.run()

extension Skills {
    func swimming() {
        
    }
}
