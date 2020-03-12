//
//  Comment.swift
//  tmc
//
//  Created by Tolga Atmaca on 11.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import ObjectMapper

public struct Comment : Mappable {
    public var postId : Int?
    public var id : Int?
    public var name : String?
    public var email : String?
    public var body : String?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        postId <- map["postId"]
        id <- map["id"]
        name <- map["name"]
        email <- map["email"]
        body <- map["body"]
    }

}
