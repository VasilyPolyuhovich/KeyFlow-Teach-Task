//
//  Venues.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Venues: Codable {

  enum CodingKeys: String, CodingKey {
    case venueBidTimeMessage
    case venuePhone
    case venueUpcomingEventsCount
    case venueUrl
    case venueWebsite
    case keyflowCityId
    case venueSortRank
    case venueEmail
    case venueLegalDisclaimerReceipt
    case venueTZ
    case venueDescription
    case accountCurrency
    case venueId
    case venueLocation
    case venueAtmosphere
    case venueImages
    case venueLogo
    case venueName
    case venueRglInfoColor
    case venueMusic
    case venueDoorPolicy
  }

  var venueBidTimeMessage: String?
  var venuePhone: String?
  var venueUpcomingEventsCount: Int?
  var venueUrl: String?
  var venueWebsite: String?
  var keyflowCityId: Int?
  var venueSortRank: Int?
  var venueEmail: String?
  var venueLegalDisclaimerReceipt: String?
  var venueTZ: String?
  var venueDescription: String?
  var accountCurrency: String?
  var venueId: Int?
  var venueLocation: VenueLocation?
  var venueAtmosphere: [String]?
  var venueImages: [String]?
  var venueLogo: String?
  var venueName: String?
  var venueRglInfoColor: String?
  var venueMusic: [String]?
  var venueDoorPolicy: String?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    venueBidTimeMessage = try container.decodeIfPresent(String.self, forKey: .venueBidTimeMessage)
    venuePhone = try container.decodeIfPresent(String.self, forKey: .venuePhone)
    venueUpcomingEventsCount = try container.decodeIfPresent(Int.self, forKey: .venueUpcomingEventsCount)
    venueUrl = try container.decodeIfPresent(String.self, forKey: .venueUrl)
    venueWebsite = try container.decodeIfPresent(String.self, forKey: .venueWebsite)
    keyflowCityId = try container.decodeIfPresent(Int.self, forKey: .keyflowCityId)
    venueSortRank = try container.decodeIfPresent(Int.self, forKey: .venueSortRank)
    venueEmail = try container.decodeIfPresent(String.self, forKey: .venueEmail)
    venueLegalDisclaimerReceipt = try container.decodeIfPresent(String.self, forKey: .venueLegalDisclaimerReceipt)
    venueTZ = try container.decodeIfPresent(String.self, forKey: .venueTZ)
    venueDescription = try container.decodeIfPresent(String.self, forKey: .venueDescription)
    accountCurrency = try container.decodeIfPresent(String.self, forKey: .accountCurrency)
    venueId = try container.decodeIfPresent(Int.self, forKey: .venueId)
    venueLocation = try container.decodeIfPresent(VenueLocation.self, forKey: .venueLocation)
    venueAtmosphere = try container.decodeIfPresent([String].self, forKey: .venueAtmosphere)
    venueImages = try container.decodeIfPresent([String].self, forKey: .venueImages)
    venueLogo = try container.decodeIfPresent(String.self, forKey: .venueLogo)
    venueName = try container.decodeIfPresent(String.self, forKey: .venueName)
    venueRglInfoColor = try container.decodeIfPresent(String.self, forKey: .venueRglInfoColor)
    venueMusic = try container.decodeIfPresent([String].self, forKey: .venueMusic)
    venueDoorPolicy = try container.decodeIfPresent(String.self, forKey: .venueDoorPolicy)
  }

}
