//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// Abstract interface
protocol Train {
    func getTrainSpeed() -> Double
    func  getPassengerNumber() -> Int
}

//Concrete Implementation

final class ABCTrain : Train {
    private let speed: Double = 24.65
    private let passengerNumber: Int = 24
    
    func getTrainSpeed() -> Double {
        return speed
    }
    
    func getPassengerNumber() -> Int {
        return passengerNumber
    }
    
}


// Decorator
class ModifyABCTrain : Train {
    private let train: Train
    
    init(train: Train) {
        self.train = train
    }
    
    func getTrainSpeed() -> Double {
        return train.getTrainSpeed() + 3.0
    }
    
    func getPassengerNumber() -> Int {
        train.getPassengerNumber() - 2
    }
}
 

let abc = ABCTrain()

let modifiedAbc = ModifyABCTrain(train: abc)

print(modifiedAbc.getTrainSpeed())

//: [Next](@next)
