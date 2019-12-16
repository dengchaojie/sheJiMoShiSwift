//
//  ViewController.swift
//  LiShiTiHuan
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let b = B.init()
        let result = b.add(a: b.subtract(a: 2, b: 1), b: 5)
        print(result)
        
    }


}

