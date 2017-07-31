//
//  httpbin.org.josn.swift
//  CloudsApp
//
//  Created by lawliet on 2017/7/31.
//  Copyright © 2017年 lawliet. All rights reserved.
//

import Foundation

struct HttpbinOrgJson {
    
    let origin : String
    let  url : String
    
//    init() {      init會改寫動自動產生的建構子，影響使用
//        self.origin = "內部設定初始值"
//        self.url = "內部設定初始值"
//    }

    
}


extension HttpbinOrgJson {
    
    init() {
        self.origin = "內部設定初始值"
        self.url = "內部設定初始值"
    }

    init(dictionary:[String:Any])throws
    {
    guard let origin = dictionary["origin"] as? String,
        let url = dictionary["url"] as? String
        else
    {
          //return
        throw 0 as! Error
        }
        self.origin = origin
        self.url = url
    }
}
