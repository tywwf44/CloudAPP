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

    var apiGithubComJsons:[ApiGithubComJson] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //希望重構城市盜用以下一行即可處理 JSON的取得
        ApiGithubComJson.fetch(){ dataTransfer in
            
            self.apiGithubComJsons = dataTransfer
            
            print("fetch()完成後")
            print(self.apiGithubComJsons)
        }
      
//        Alamofire.request("https://api.github.com/users/octocat/repos").responseJSON { (response) in
//            guard let result_value = response.result.value,
//                let array = result_value as? [Any]
//        else{
//            
//                return
//            }
//            for JSON_OBJECT in array{
//                      guard let dictionary = JSON_OBJECT as?[String:Any]
//                        else
//                      {//將 JSON 物件轉成key-value 陣列
//                    return
//                        }
//                for(key,value) in dictionary
//                {
//                switch value
//                {
//                case is Int:
//                    print("\(key):\(value)(Int)")
//                case is String:
//                    print("\(key):\(value)(String)")
//                case is Bool:
//                    print("\(key):\(value)(Bool)")
//                case is [Array<Any>]:
//                    print("\(key):\(value)(Array)")
//                default:
//                    print("\(key):(unkown type)")
//                    }
//                }
////                guard let value = dictionary["id"]as? Int
////                  else{
////                            return
////                      }
////                print("id:\(value)")
////
////                if let value = dictionary["name"]as? String
////                {
////                    print("name:\(value)")
////                }
////                if let value = dictionary["private"]as? Bool
////                {
////                    print("private:\(value)")
////                }
////                if let value = dictionary["homepage"]as? String
////                {
////                    print("homepage:\(value)")
////                }
//                    }
//                    // }
//                //}
//            
//       // }
//           // }
//            
//        }

        
//        Alamofire.request("http://httpbin.org/get").responseJSON { (response) in
////            print(response.request as Any)
////            print(response.data as Any)
////            print(response.response as Any)
////            print(response.result as Any)
//            
//            guard let JSON_OBJECT = response.result.value,
//            
//                let dictionary = JSON_OBJECT as? [String:Any]
//            else
//            {
//                return
//            }
//                guard let origin = dictionary["origin"] as? String
//                    else
//                    {
//                        return
//                       }
//                       print("origin\(origin)")
//            
//            guard let url = dictionary["url"] as? String
//                else
//            {
//                return
//            }
//            print("url\(url)")
//        
//            //在初始化物件時，輸入變數用的資料
//            let httpbinOrgJson = HttpbinOrgJson(origin: origin , url: url)
//            print(httpbinOrgJson)
//            
//            let httpbinOrgJson2 = HttpbinOrgJson()
//            print(httpbinOrgJson2)
//            
//            
//            let httpbinOrgJson3 = try? HttpbinOrgJson(dictionary: dictionary)
//            print(httpbinOrgJson3 as Any)
   // }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

