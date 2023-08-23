//: [Previous](@previous)

import Foundation


// Handler protocol
protocol PurchaseApproval {
    var successor: PurchaseApproval? { get set }
    func approve(amount: Double)
}

// Concrete Handlers
class Manager: PurchaseApproval {
    var successor: PurchaseApproval?
    
    func approve(amount: Double) {
        if amount <= 1000 {
            print("Manager approved the purchase of $\(amount)")
        } else if let successor = successor {
            successor.approve(amount: amount)
        }
    }
}

class Director: PurchaseApproval {
    var successor: PurchaseApproval?
    
    func approve(amount: Double) {
        if amount <= 5000 {
            print("Director approved the purchase of $\(amount)")
        } else if let successor = successor {
            successor.approve(amount: amount)
        }
    }
}

class VicePresident: PurchaseApproval {
    var successor: PurchaseApproval?
    
    func approve(amount: Double) {
        if amount <= 10000 {
            print("Vice President approved the purchase of $\(amount)")
        } else {
            print("Purchase request denied for $\(amount)")
        }
    }
}

// Creating the chain
let manager = Manager()
let director = Director()
let vp = VicePresident()

manager.successor = director
director.successor = vp

// Testing the chain
let purchaseAmounts: [Double] = [800, 3500, 7500, 12000]

for amount in purchaseAmounts {
    manager.approve(amount: amount)
}


//: [Next](@next)
