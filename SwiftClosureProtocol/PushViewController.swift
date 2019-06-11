//
//  PushViewController.swift
//  SwiftClosureProtocol
//
//  Created by 张锦江 on 2019/6/11.
//  Copyright © 2019 xtayqria. All rights reserved.
//

import UIKit

// 声明闭包
typealias MyClosure = (String) -> Void

// 声明代理
protocol PushBackProtocol {
    func backProtocol(num : Int) -> Void
}

class PushViewController: UIViewController {
    
    var zjjClo : MyClosure?
    
    var zjjPro : PushBackProtocol?
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        self.zjjClo!("我是闭包返回的")
        
        self.zjjPro?.backProtocol(num: 1237)
        
    }
    
    func dataRequest(zjj : MyClosure) -> Void {
        
        zjj("我是返回的字符串")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "第二页"
        
        dataRequest {
            (str : String) in
            print(str)
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
