//: [Previous](@previous)

import Foundation

// Subject Protocol
protocol Image {
    func display()
}

// RealSubject
class RealImage: Image {
    private var filename: String
    
    init(filename: String) {
        self.filename = filename
        loadFromDisk()
    }
    
    private func loadFromDisk() {
        print("Loading image from disk: \(filename)")
    }
    
    func display() {
        print("Displaying image: \(filename)")
    }
}

// Proxy
class ImageProxy: Image {
    private var realImage: RealImage?
    private var filename: String
    
    init(filename: String) {
        self.filename = filename
    }
    
    func display() {
        if realImage == nil {
            realImage = RealImage(filename: filename)
        }
        realImage?.display()
    }
}

// Client Code
let image: Image = ImageProxy(filename: "sample.jpg")

// The real image is loaded and displayed only when needed
image.display()

// The next time, the real image is already loaded, so it's displayed directly
image.display()


//: [Next](@next)
