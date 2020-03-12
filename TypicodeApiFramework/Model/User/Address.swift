//
//  Address.swift
//  tmc
//
//  Created by Tolga Atmaca on 10.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//


import Foundation
import ObjectMapper

public  struct Address : Mappable {
    public var street : String?
    public var suite : String?
    public var city : String?
    public var zipcode : String?
    public var geo : Geo?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        street <- map["street"]
        suite <- map["suite"]
        city <- map["city"]
        zipcode <- map["zipcode"]
        geo <- map["geo"]
    }

}
