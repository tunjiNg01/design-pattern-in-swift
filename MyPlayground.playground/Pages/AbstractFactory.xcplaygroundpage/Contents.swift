//: [Previous](@previous)

import Foundation

import UIKit

// Abstract factory
protocol Databases {
    func createMongoDB() -> MongoDB
    func creatMysqlDB() -> MySqlDB
}

class DBFactory: Databases {
    func createMongoDB() -> MongoDB {
        return MongoDB()
    
    }
    
    func creatMysqlDB() -> MySqlDB {
        return MySqlDB()
    }
}

protocol ConnectString {
    func createConnection() -> String
}

class MongoDB: ConnectString {
    func createConnection() -> String{
        return "connected to mongoDB"
    }
}

class MySqlDB: ConnectString{
    func createConnection() -> String{
        return "connected to mysql DB"
    }
}

let dbFactory = DBFactory()

let mongodb = dbFactory.createMongoDB()

let mysql = dbFactory.creatMysqlDB()

print(mongodb.createConnection())
print(mysql.createConnection())


