//
//  ClassA.swift
//  JieKouGeLi
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation

class ClassA {
    
    func depend1(i: Interface1) -> Void {
        i.method1()
    }
    
    func depend2(i: Interface2) -> Void {
        i.method2()
    }
    
    func depend3(i: Interface2) -> Void {
        i.method3()
    }
    
    
}
