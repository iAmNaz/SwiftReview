//: [Previous](@previous)

import Foundation

class Placeholder {
    
}

protocol CoffeeBean {
    var name: String { get }
    func ground()
}

class Robusta: CoffeeBean {
    var name: String {
        return "Robusta"
    }
    
    func ground() {
        print("Grounded \(name) bean")
    }
}

class Arabica: CoffeeBean {
    var name: String {
        return "Arabica"
    }
    
    func ground() {
        print("Grounded \(name) bean")
    }
}

// Protocol based Generics
class GrinderA<Type: CoffeeBean> {
    var coffee: Type
    
    init(bean: Type) {
        self.coffee = bean
    }
    
    func start() {
        coffee.ground()
    }
}

//let grinder = GrinderA(bean: Arabica())
//    grinder.start()

class GrinderB<Type: CoffeeBean> {
    var coffee: Type!
    
    func start() {
        coffee.ground()
    }
}

/*
 class GrinderB_Arabica {
     var coffee: Arabica!
     
     func start() {
         coffee.ground()
     }
 }
 */

let grinderB = GrinderB<Arabica>()
    grinderB.coffee = Arabica()
//    grinderB.start()


// Int, Float, Double
// DRY
class Calculator<Number: Numeric> {
    func multiply(a: Number, b: Number) -> Number {
        return a*b
    }
}

let calc = Calculator<Float>()
print(calc.multiply(a: 2.2, b: 5.3))

func multiply<Number: Numeric>(a: Number, b: Number) -> Number {
    return a*b
}

let product = multiply(a: 1, b: 4)

// Generic Parameter Constraint
func getProduct<Number>(a: Number, b: Number) -> Number where Number: Numeric {
    return a*b
}

class DataStore<Mark, Jay> {
    var cache: Mark!
    var usbCache: Jay!
}

let intDataStore = DataStore<Int, String>()
intDataStore.cache = 10
intDataStore.usbCache = "some string"


let stringDataStore = DataStore<String, Float>()
stringDataStore.cache = "store me"

// inout

let firsNumber = 4
var secondNumber = 8

func add(a: Int, b: inout Int) -> Int {
    b = 4
    return a + b
}

print("Sum: \(add(a: firsNumber, b: &secondNumber))")
//: [Next](@next)
