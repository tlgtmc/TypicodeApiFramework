//
//  Company.swift
//  tmc
//
//  Created by Tolga Atmaca on 10.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import Foundation
import ObjectMapper

public  struct Company : Mappable {
    public var name : String?
    public var catchPhrase : String?
    public var bs : String?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        name <- map["name"]
        catchPhrase <- map["catchPhrase"]
        bs <- map["bs"]
    }

}
