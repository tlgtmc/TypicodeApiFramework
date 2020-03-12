//
//  GeoCoordinates.swift
//  tmc
//
//  Created by Tolga Atmaca on 10.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//
import Foundation
import ObjectMapper

public struct Geo : Mappable {
    public var lat : String?
    public var lng : String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        
        lat <- map["lat"]
        lng <- map["lng"]
    }
    
}
