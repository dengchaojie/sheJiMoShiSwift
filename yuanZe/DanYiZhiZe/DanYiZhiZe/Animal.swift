//
//  Animal.swift
//  DanYiZhiZe
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//  https://mp.weixin.qq.com/s/NrtscP6wQtbANnPwTYolZQ

import Foundation


class Animal: NSObject {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func breath() {
        print("一类多责Animal-breath：\(self.name)呼吸空气")
    }
    
    func breath2() {
        print("一类多责Animal-breath2：\(self.name)呼吸水")
    }
}






