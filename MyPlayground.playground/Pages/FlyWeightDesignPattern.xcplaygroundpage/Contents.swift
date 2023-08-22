//: [Previous](@previous)

import Foundation

// Flyweight Protocol
protocol Shape {
    func draw(x: Int, y: Int)
}

// Concrete Flyweight
class Circle: Shape {
    private var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func draw(x: Int, y: Int) {
        print("Drawing a \(color) circle at (\(x), \(y))")
    }
}

// Flyweight Factory
class ShapeFactory {
    private var circleCache: [String: Circle] = [:]
    
    func getCircle(color: String) -> Circle {
        if let cachedCircle = circleCache[color] {
            return cachedCircle
        } else {
            let circle = Circle(color: color)
            circleCache[color] = circle
            return circle
        }
    }
}


// Client Code
let shapeFactory = ShapeFactory()

let redCircle = shapeFactory.getCircle(color: "red")
let blueCircle = shapeFactory.getCircle(color: "blue")
let greenCircle = shapeFactory.getCircle(color: "green")

redCircle.draw(x: 10, y: 15)
blueCircle.draw(x: 20, y: 25)
greenCircle.draw(x: 30, y: 35)

//: [Next](@next)
