//: [Previous](@previous)

import Foundation

// Subsystems

class CPU {
    func freeze() { /* Implementation */ }
    func jump(position: Int) { /* Implementation */ }
    func execute() { /* Implementation */ }
}

class Memory {
    func load(position: Int, data: String) { /* Implementation */ }
}

// subsystems facade
class HardDrive {
    func read(position: Int, size: Int) -> String {
        return "Reading the hard drive with size: \(size), and position: \(position)"
    }
}


// Facade
class ComputerFacade {
    private let cpu: CPU
    private let memory: Memory
    private let hardDrive: HardDrive
    
    init() {
        self.cpu = CPU()
        self.memory = Memory()
        self.hardDrive = HardDrive()
    }
    
    func start() {
        cpu.freeze()
        memory.load(position: 0, data: "Boot data")
        cpu.jump(position: 0)
        cpu.execute()
    }
    
    func fetchData() -> String {
        return hardDrive.read(position: 0, size: 1024)
    }
}

// Client Code
let computer = ComputerFacade()
computer.start()
let data = computer.fetchData()
print("Result: \(data)")

//: [Next](@next)
