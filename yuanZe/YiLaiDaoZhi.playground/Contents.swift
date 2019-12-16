import UIKit
//https://mp.weixin.qq.com/s/z0thGHC_2aih_yh3GWOWEg

protocol IReader {
    
    func getContent() -> String
    
}

class Book: IReader {
    func getContent() -> String {
        print("book")
        return "book"
    }
    
}

class Newspaper: IReader {
    func getContent() -> String {
        print("newspaper")
        return "newspaper"
    }
}

class Mother {
    func narrate(iReader: IReader) {
        iReader.getContent()
        
    }
}

let mot = Mother.init()
mot.narrate(iReader: Book.init())
mot.narrate(iReader: Newspaper.init())

