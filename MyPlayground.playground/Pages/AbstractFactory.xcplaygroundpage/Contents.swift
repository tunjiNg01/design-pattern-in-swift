//: [Previous](@previous)

import Foundation

import UIKit

// Abstract factory
protocol ShapeFactory {
    func createCircle() -> Circle
    func createRectangle() -> Rectangle
    func createSquare() -> Square
}

// Concrete factory
class ShapeFactoryImpl: ShapeFactory {
    func createCircle() -> Circle {
        return Circle()
    }

    func createRectangle() -> Rectangle {
        return Rectangle()
    }

    func createSquare() -> Square {
        return Square()
    }
}

// Product
protocol Shape {
    var name: String { get }
}

// Concrete product
class Circle: Shape {
    var name: String = "Circle"
}

class Rectangle: Shape {
    var name: String = "Rectangle"
}

class Square: Shape {
    var name: String = "Square"
}

// Client code
let shapeFactory = ShapeFactoryImpl()

let circle = shapeFactory.createCircle()
print(circle.name) // Circle

let rectangle = shapeFactory.createRectangle()
print(rectangle.name) // Rectangle

let square = shapeFactory.createSquare()
print(square.name) // Square

//: [Next](@next)
