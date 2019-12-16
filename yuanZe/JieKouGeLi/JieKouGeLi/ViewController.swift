//
//  ViewController.swift
//  JieKouGeLi
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//
//https://mp.weixin.qq.com/s/lCMxv20N6ZTzV0uGKBZCqw
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ca = ClassA.init()
        let cb = ClassB.init()
        ca.depend1(i: cb)
        ca.depend2(i: cb)
        ca.depend3(i: cb)
        
        let cc = ClassC.init()
        let cd = ClassD.init()
        cc.depend1(i: cd)
        cc.depend4(i: cd)
        cc.depend5(i: cd)
    }


}

