//: [Previous](@previous)

import Foundation

print("hello 1")



class GameEnginne: NSCopying {
   
    var assets : [String]
    var levels: Int {
        get {
            return self.levels
        }
        set {
            self.levels = newValue
        }
    }

    init(assets: [String]) {
        self.assets = assets
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return GameEnginne(assets: assets)
    }
    
    func start()  {
        switch levels {
        case 1:
            print("level 1 started")
        case 2:
            print("level 2 started")
        default:
            print("the game have'nt started")
        }
    }
   
}


let game = GameEnginne(assets: ["sword, gun, bullet"])
game.levels = 1
game.start()
print("hello 2")


//: [Next](@next)
