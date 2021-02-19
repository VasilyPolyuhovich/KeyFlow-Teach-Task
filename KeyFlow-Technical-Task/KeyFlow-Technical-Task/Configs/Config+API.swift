//
//  Config+API.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 19.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import Foundation
import CoreLocation

extension Config {
    enum API {
        static let mainImageStorageUrl: String = "https://res.cloudinary.com/keyflow/image/upload/"
        static let mainURLString: String = "https://stage-api.keyflow.com/capi/v4"
        static let locationRadius: Double = 20
        static let placeId: String = "ChIJywtkGTF2X0YRZnedZ9MnDag" //Stockholm
        static let placeCoordinates: CLLocation = CLLocation(latitude: 59.33539270000001, longitude: 18.07379500000002)
        static let pageSize: Int = 50
    }
}
