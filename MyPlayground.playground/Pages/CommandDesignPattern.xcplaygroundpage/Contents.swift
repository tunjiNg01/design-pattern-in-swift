//: [Previous](@previous)

import Foundation

// Command protocol
protocol Command {
    func execute()
}

// Concrete Command classes
class LightOnCommand: Command {
    private let light: Light
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOn()
    }
}

class TVOnCommand: Command {
    private let tv: TV
    
    init(tv: TV) {
        self.tv = tv
    }
    
    func execute() {
        tv.turnOn()
    }
}

// Receiver classes
class Light {
    func turnOn() {
        print("Light is on")
    }
    
    func turnOff() {
        print("Light is off")
    }
}

class TV {
    func turnOn() {
        print("TV is on")
    }
    
    func turnOff() {
        print("TV is off")
    }
}

// Invoker class
class RemoteControl {
    private var command: Command?
    
    func setCommand(command: Command) {
        self.command = command
    }
    
    func pressButton() {
        command?.execute()
    }
}

// Usage
let light = Light()
let tv = TV()

let lightOnCommand = LightOnCommand(light: light)
let tvOnCommand = TVOnCommand(tv: tv)

let remoteControl = RemoteControl()

remoteControl.setCommand(command: lightOnCommand)
remoteControl.pressButton()  // Turns on the light

remoteControl.setCommand(command: tvOnCommand)
remoteControl.pressButton()  // Turns on the TV

//: [Next](@next)
