//: [Previous](@previous)

import Foundation

// Builder
class PizzaBuilder {
    var crust: String = ""
    var sauce: String = ""
    var toppings: [String] = []
    
    func setCrust(_ crust: String){
        // logic
        self.crust = crust
    }
    
    func setSauce(_ sauce: String){
        self.sauce = sauce
    }
    
    func setTopping(_ topping: String) {
        toppings.append(topping)
    }
    
    
    func build() -> Pizza {
        return Pizza(crust: crust, sauce: sauce, toppings: toppings)
    }
}

// Director

class OrderPizza {
    func order() -> Pizza {
        let builder = PizzaBuilder()
        
        builder.setCrust("Thin crust")
        builder.setSauce("Pepperoni")
        builder.setTopping("Mushroom")
        
        return builder.build()
    }
}

// Product

class Pizza {
    var crust: String
    var sauce: String
    var toppings: [String]
    
    init(crust: String, sauce: String, toppings:[String]) {
        self.crust = crust
        self.sauce = sauce
        self.toppings = toppings
    }
}

let orderpizza = OrderPizza()

let pizza = orderpizza.order()

print(pizza.crust)
