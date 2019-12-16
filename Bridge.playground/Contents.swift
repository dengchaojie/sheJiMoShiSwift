import UIKit
import Foundation


protocol DrawApi {
    func drawColor()

}

class RedColor: DrawApi {
    func drawColor() {
        print("red ")
    }

}

class GreenColor: DrawApi {
    func drawColor()  {
        print("green ")
    }

}

class Shape {
    
    func drawColor(color: DrawApi) {}
}

class Circle: Shape {
    var x: CGFloat
    var y: CGFloat
    var radius: CGFloat
    
    init(x: CGFloat, y: CGFloat, radius: CGFloat) {
        self.x = x
        self.y = y
        self.radius = radius
    }

    override func drawColor(color: DrawApi) {
        color.drawColor()
    }
}

let redCir = Circle.init(x: 2, y: 3, radius: 2)
redCir.drawColor(color: RedColor())
let greenCir = Circle.init(x: 5, y: 9, radius: 3)
greenCir.drawColor(color: GreenColor())

class Rectangle: Shape {
    var startPoint: CGPoint
    var endPoint: CGPoint
    init(startPoint: CGPoint, endPoint: CGPoint) {
        self.startPoint = startPoint
        self.endPoint = endPoint
    }
    
    override func drawColor(color: DrawApi) {
        color.drawColor()
    }
}

let redRec = Rectangle.init(startPoint: CGPoint.init(x: 3, y: 4), endPoint: CGPoint.init(x: 8, y: 10))
redRec.drawColor(color: RedColor.init())


