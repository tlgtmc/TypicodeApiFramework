//
//  User.swift
//  tmc
//
//  Created by Tolga Atmaca on 10.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//
import Foundation
import ObjectMapper

public struct User : Mappable {
    public var id : Int?
    public var name : String?
    public var username : String?
    public var email : String?
    public var address : Address?
    public var phone : String?
    public var website : String?
    public var company : Company?

    public init?(map: Map) {

    }

    public mutating func mapping(map: Map) {

        id <- map["id"]
        name <- map["name"]
        username <- map["username"]
        email <- map["email"]
        address <- map["address"]
        phone <- map["phone"]
        website <- map["website"]
        company <- map["company"]
    }

     public func getAddressStr() -> String {
        var address  = self.address?.street!
            address! += ", "
            address! += (self.address?.suite!)!
            address! += ", "
            address! += (self.address?.city!)!
            address! += ", "
            address! += (self.address?.zipcode!)!
        
        return address!
    }
    
     public func getCompanyStr() -> String {
        var company = (self.company!.bs)!
            company += "\n"
            company += (self.company!.catchPhrase)!
        
        return company
    }
}

