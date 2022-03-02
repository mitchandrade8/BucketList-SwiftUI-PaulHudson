//
//  DreamLocation.swift
//  BucketList
//
//  Created by Mitch Andrade on 2/26/22.
//

import Foundation
import CoreLocation

struct DreamLocation: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
     
    static let example = DreamLocation(
        id: UUID(),
        name: "Buckingham Palace",
        description: "Where Queen Elizabeth lives with her dorgis",
        latitude: 51.501,
        longitude: -0.141
    )
    
    static func ==(lhs: DreamLocation, rhs: DreamLocation) -> Bool {
        lhs.id == rhs.id
    }
}

