//
//  ViewController.swift
//  DanYiZhiZe
//
//  Created by hrt03 on 2019/12/16.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let cow = Animal.init(name: "牛")
        cow.breath()


        let fish = Animal.init(name: "鱼")
        fish.breath2()
        
        
        let terrestrial = Terrestrial.init(name: "牛")
        terrestrial.breath()
        
        let aquatic = Aquatic.init(name: "鱼")
        aquatic.breath()
        
    }



    
}

