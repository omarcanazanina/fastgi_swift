//
//  NetworkingManager.swift
//  fastgi
//
//  Created by Hegaro on 04/08/2020.
//  Copyright © 2020 Hegaro. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Combine

class NetworkingManager: ObservableObject {
    
    @Published var userList = [UserList]()
    
    init(){
        DispatchQueue.main.async {
            AF.request("https://reqres.in/api/users?page=2").responseJSON { (response) in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    for item in json ["data"]{
                        print(item.1)
                    }
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
