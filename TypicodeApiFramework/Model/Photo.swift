//
//  Photo.swift
//  tmc
//
//  Created by Tolga Atmaca on 11.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import ObjectMapper

public struct Photo : Mappable {
    public var albumId : Int?
    public var id : Int?
    public var title : String?
    public var url : String?
    public var thumbnailUrl : String?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        albumId <- map["albumId"]
        id <- map["id"]
        title <- map["title"]
        url <- map["url"]
        thumbnailUrl <- map["thumbnailUrl"]
    }

}
