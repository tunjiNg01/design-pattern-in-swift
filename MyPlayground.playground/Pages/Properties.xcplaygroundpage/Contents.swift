//: [Previous](@previous)

import Foundation


struct Mammals {
   lazy var name: String = ""
}

struct StateManager {
    var mode = "dark"
     
    var appMode: String {
            return mode
    
    }
}
var state = StateManager()


print(state.appMode)


class Dice {
    var rolls: Int = 0{
        willSet {
            print("the new value is \(newValue)")
        }
        
        didSet {
            print("the old value is \(oldValue)")
        }
    }
}


var dice = Dice()
dice.rolls = 5
dice.rolls = 4


@propertyWrapper
struct MaxRange {
    private var number: Int
    private var maximum: Int
    
    var wrappedValue: Int {
        get{
            return number
        }
        set {
            number = min(newValue, maximum)
        }
    }
    
    init(){
        maximum = 5
        number = 0
    }
    
    
    init(wrappedValue: Int){
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int){
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
    
}

struct Favourite {
    @MaxRange(wrappedValue: 12) var star: Int
}

var fav = Favourite()
fav.star = 4

print(fav.star)
