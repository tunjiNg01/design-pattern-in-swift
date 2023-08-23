//: [Previous](@previous)

import Foundation


// Abstract Expression
protocol Expression {
    func interpret(context: Context) -> Int
}

// Terminal Expression
class NumberExpression: Expression {
    private let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    func interpret(context: Context) -> Int {
        return value
    }
}

// Non-Terminal Expression
class AddExpression: Expression {
    private let leftExpression: Expression
    private let rightExpression: Expression
    
    init(left: Expression, right: Expression) {
        self.leftExpression = left
        self.rightExpression = right
    }
    
    func interpret(context: Context) -> Int {
        return leftExpression.interpret(context: context) + rightExpression.interpret(context: context)
    }
}

// Context
class Context {
    var variables: [String: Int] = [:]
    
    func getVariableValue(variableName: String) -> Int? {
        return variables[variableName]
    }
    
    func setVariableValue(variableName: String, value: Int) {
        variables[variableName] = value
    }
}

// Usage
let context = Context()
context.setVariableValue(variableName: "x", value: 10)
context.setVariableValue(variableName: "y", value: 5)

let expression = AddExpression(left: NumberExpression(value: context.getVariableValue(variableName: "x") ?? 0),
                               right: NumberExpression(value: context.getVariableValue(variableName: "y") ?? 0))

let result = expression.interpret(context: context)
print("Result: \(result)") // Output: Result: 15


//: [Next](@next)
