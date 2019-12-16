//
//  ClassC.swift
//  JieKouGeLi
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation


class ClassC {
    func depend1(i: Interface1) -> Void {
        i.method1()
    }
    
    func depend4(i: Interface3) -> Void {
        i.method4()
    }
    
    func depend5(i: Interface3) -> Void {
        i.method5()
    }
}
