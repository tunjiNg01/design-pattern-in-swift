//: [Previous](@previous)

import Foundation

// Builder
class PizzaBuilder {
    var crust: String = ""
    var sauce: String = ""
    var toppings: [String] = []

    func setCrust(_ crust: String) {
        self.crust = crust
    }

    func setSauce(_ sauce: String) {
        self.sauce = sauce
    }

    func addTopping(_ topping: String) {
        toppings.append(topping)
    }

    func build() -> Pizza {
        return Pizza(crust: crust, sauce: sauce, toppings: toppings)
    }
}

// Director
class PizzaOrder {
    func orderPizza() -> Pizza {
        let builder = PizzaBuilder()

        builder.setCrust("Thin crust")
        builder.setSauce("Pepperoni")
        builder.addTopping("Mushrooms")
        builder.addTopping("Onions")

        return builder.build()
    }
}

// Product
class Pizza {
    var crust: String
    var sauce: String
    var toppings: [String]

    init(crust: String, sauce: String, toppings: [String]) {
        self.crust = crust
        self.sauce = sauce
        self.toppings = toppings
    }
}

// Client code
let pizzaOrder = PizzaOrder()
let pizza = pizzaOrder.orderPizza()

print(pizza.crust) // Thin crust
print(pizza.sauce) // Pepperoni
print(pizza.toppings) // [Mushrooms, Onions]

//: [Next](@next)
