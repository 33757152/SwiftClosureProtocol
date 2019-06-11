//
//  ViewController.swift
//  SwiftClosureProtocol
//
//  Created by 张锦江 on 2019/6/11.
//  Copyright © 2019 xtayqria. All rights reserved.
//

import UIKit

class ViewController: UIViewController , PushBackProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "第一页"
        creatBtn()
    }
    
    func creatBtn() -> Void {
        
        let btn = UIButton.init(type: UIButton.ButtonType.custom)
        btn.frame = CGRect.init(x: 50, y: 200, width: 100, height: 50)
        btn.backgroundColor = UIColor.green
        btn.setTitle("jump", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.red, for: UIControl.State.normal)
        btn .addTarget(self, action: #selector(jump), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn)
        
    }
    
    @objc func jump() -> Void {
        let push = PushViewController.init()
        push.zjjClo = {
            (str : String) -> Void in
            print("HELLO！"+str)
        }
        push.zjjPro = self
        self.navigationController?.pushViewController(push, animated: true)
    }
    
    func backProtocol(num: Int) {
        print(num)
    }
    
}
