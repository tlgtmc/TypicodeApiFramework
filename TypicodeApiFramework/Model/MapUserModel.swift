//
//  MapUserModel.swift
//  tmc
//
//  Created by Tolga Atmaca on 11.03.2020.
//  Copyright © 2020 Tolga Atmaca. All rights reserved.
//

import MapKit

public class MapUserModel: NSObject, MKAnnotation {
    public let user: User?
    public let title: String?
    public let coordinate: CLLocationCoordinate2D
  
    public init(user: User) {
        self.user = user
        self.title = user.username
        self.coordinate = CLLocationCoordinate2D(latitude: Double((user.address?.geo?.lat)!)!, longitude: Double((user.address?.geo?.lat)!)!)
    
        super.init()
    }

    public func getPointName() -> String {
        (self.user?.name)!
    }

    
}
