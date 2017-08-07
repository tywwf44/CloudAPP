//
//  httpbin.org.josn.swift
//  CloudsApp
//
//  Created by lawliet on 2017/7/31.
//  Copyright © 2017年 lawliet. All rights reserved.
//

import Foundation

enum DeCodeJsonError:Error
{
case missing(String)
case invalid(String,Any)

}


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

//    init(dictionary:[String:Any])throws
//    {
//    guard let origin = dictionary["origin"] as? String
//        else
//    {
//        throw DeCodeJsonError.missing("origin")
//        }
//       guard  let url = dictionary["url"] as? String
//        else
//        {
//            throw DeCodeJsonError.missing("url")
//        }
//        
//        self.origin = origin
//        self.url = url
//    }
    
    
    init?(dictionary:[String:Any])
    {
        guard let origin = dictionary["origin"] as? String
            else
        {
            return nil
        }
        guard  let url = dictionary["url"] as? String
            else
        {
            return nil
        }
        
        self.origin = origin
        self.url = url
    }

}
