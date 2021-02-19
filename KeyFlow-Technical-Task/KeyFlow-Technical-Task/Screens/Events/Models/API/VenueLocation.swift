//
//  VenueLocation.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct VenueLocation: Codable {

  enum CodingKeys: String, CodingKey {
    case locationCoordinates
    case locationPlaceID
    case locationAddress
    case locationReference
    case locationZoom
    case locationCountry
    case locationCountryCode
    case locationCity
  }

  var locationCoordinates: [String]?
  var locationPlaceID: String?
  var locationAddress: String?
  var locationReference: String?
  var locationZoom: Int?
  var locationCountry: String?
  var locationCountryCode: String?
  var locationCity: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    locationCoordinates = try container.decodeIfPresent([String].self, forKey: .locationCoordinates)
    locationPlaceID = try container.decodeIfPresent(String.self, forKey: .locationPlaceID)
    locationAddress = try container.decodeIfPresent(String.self, forKey: .locationAddress)
    locationReference = try container.decodeIfPresent(String.self, forKey: .locationReference)
    locationZoom = try container.decodeIfPresent(Int.self, forKey: .locationZoom)
    locationCountry = try container.decodeIfPresent(String.self, forKey: .locationCountry)
    locationCountryCode = try container.decodeIfPresent(String.self, forKey: .locationCountryCode)
    locationCity = try container.decodeIfPresent(String.self, forKey: .locationCity)
  }

}
