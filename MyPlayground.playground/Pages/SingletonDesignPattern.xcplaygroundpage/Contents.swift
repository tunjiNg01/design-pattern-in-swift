//: [Previous](@previous)

import Foundation

class Singleton {
    static let shared = Singleton()
    var connectionString: String {
      "<here is the connection string>"
    }
    private init() {}
}


let singleton = Singleton.shared

print(singleton.connectionString)
//: [Next](@next)
