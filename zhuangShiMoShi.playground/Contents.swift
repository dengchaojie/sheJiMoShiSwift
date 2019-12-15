import UIKit
import Foundation

//https://mp.weixin.qq.com/s/giopOsTeA7ss-imh0V4-4w
protocol Shape {
    
    func draw()
    
}

class Circle: Shape {
    func draw() {
        print("Circle")
    }
    
    
}

class Rectangle: Shape {
    func draw() {
        print("Rectangle")
    }
}

class ShapeDecorater: Shape {
    func draw() {
        print("ShapeDecorater")
    }
    let decorater: Shape
    init(decorater: Shape) {
        self.decorater = decorater
    }
    
    
}

class RedShapeDecorater: ShapeDecorater {
    override func draw() {
        decorater.draw()
        setRedBorder()
    }
    
    func setRedBorder() {
        print("border: red")
    }
    
    
}

let cir = Circle.init()
let redCircle = RedShapeDecorater.init(decorater: Circle.init())
let recRectangle = RedShapeDecorater.init(decorater: Rectangle.init())
print("circle with normal border")
cir.draw()

print("circle with red border")
redCircle.draw()

print("rectangle with red border")
recRectangle.draw()

