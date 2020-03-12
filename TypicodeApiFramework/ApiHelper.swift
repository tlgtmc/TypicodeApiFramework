//
//  ApiHelper.swift
//  TypicodeApiFramework
//
//  Created by Tolga Atmaca on 12.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import Alamofire

class ApiHelper {
    
    static let Instance = ApiHelper()

    func call(url: String, completion: @escaping (DataResponse<Any>) -> Void)  {
        Alamofire.request(url,
                          method: .get,
                          encoding: JSONEncoding.default)
            .responseJSON {(response) in
                completion(response)
        }
    }
    
}
