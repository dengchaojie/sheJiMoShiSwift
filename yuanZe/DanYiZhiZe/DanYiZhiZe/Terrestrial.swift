//
//  Terrestrial.swift
//  DanYiZhiZe
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation

class Terrestrial: NSObject {
    var name: String
    init(name: String) {
        self.name = name
    }

    func breath() {
        print("单一职责Terrestrial-breath：\(self.name)呼吸空气")
    }
}
