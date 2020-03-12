//
//  Album.swift
//  tmc
//
//  Created by Tolga Atmaca on 11.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import ObjectMapper

public struct Album : Mappable {
    public var userId : Int?
    public var id : Int?
    public var title : String?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        userId <- map["userId"]
        id <- map["id"]
        title <- map["title"]
    }

}
