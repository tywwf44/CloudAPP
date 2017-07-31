//
//  ViewController.swift
//  CloudsApp
//
//  Created by lawliet on 2017/7/24.
//  Copyright © 2017年 lawliet. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://api.github.com/users/octocat/repos").responseJSON { (response) in
            guard let result_value = response.result.value
                  //if let result_value = response.result.value
                else
            {
                return
            }
                if let array = result_value as? [Any]//將 result_value 解讀為 任何型態 的陣列
                {
                    //                    if let JSON_OBJECT = array.first{ //將陣列第一個 JSON物件作解析
                    for JSON_OBJECT in array{
                        if let dictionary = JSON_OBJECT as?[String:Any]
                        {//將 JSON 物件轉成key-value 陣列
                            if let value = dictionary["id"]as? Int
                            {
                                print("id:\(value)")
                            }
                            
                            if let value = dictionary["name"]as? String
                            {
                                print("name:\(value)")
                            }
                            if let value = dictionary["private"]as? Bool
                            {
                                print("private:\(value)")
                            }
                            if let value = dictionary["homepage"]as? String
                            {
                                print("homepage:\(value)")
                            }
                            else
                            {
                                print("homepage: null")
                            }
                            
                        }
                    }
                    // }
                //}
                
                
            }
            
        }

        
//        Alamofire.request("http://httpbin.org/get").responseJSON { (response) in
//            print(response.request as Any)
//            print(response.data as Any)
//            print(response.response as Any)
//            print(response.result as Any)
            
//            if let JSON = response.result.value
//            {
//                if let dictionary = JSON as? [String:Any]
//                {
//                    if let value = dictionary["origin"] as? String
//                    {
//                        print("解出key為origin的值")
//                        print(value)
//                    }
//                    
//                    if let headers_dictionary = dictionary["headers"] as? [String:Any]
//                    {
//                        for (key,value) in headers_dictionary
//                        {
//                            if let value_string = value as? String
//                            {
//                                print(key + ":" + value_string)
//                            }
//                        }
//                    }
//                    
//                    if let value = dictionary["url"] as? String
//                    {
//                        print("解出 key 為 args 的值")
//                        print(value)
//                        
//                    }
//                }
//            }
//            
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

