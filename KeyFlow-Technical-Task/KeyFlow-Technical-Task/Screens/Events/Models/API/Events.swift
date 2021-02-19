//
//  Events.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Events: Codable {

  enum CodingKeys: String, CodingKey {
    case id
    case musicIdArray
    case images
    case atmosphere
    case endTime
    case tickets
    case videoUri = "video_uri"
    case startTime
    case atmosphereIdArray
    case uri
    case minimumAge
    case eventLegalDisclaimerReceipt
    case descriptionValue = "description"
    case music
    case name
    case receivedTickets
    case doorPolicy
    case venueId
  }

  var id: Int?
  var musicIdArray: [Int]?
  var images: [String]?
  var atmosphere: [String]?
  var endTime: String?
  var tickets: [Tickets]?
  var videoUri: String?
  var startTime: String?
  var atmosphereIdArray: [Int]?
  var uri: String?
  var minimumAge: Int?
  var eventLegalDisclaimerReceipt: String?
  var descriptionValue: String?
  var music: [String]?
  var name: String?
  var receivedTickets: [Tickets]?
  var doorPolicy: String?
  var venueId: Int?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    musicIdArray = try container.decodeIfPresent([Int].self, forKey: .musicIdArray)
    images = try container.decodeIfPresent([String].self, forKey: .images)
    atmosphere = try container.decodeIfPresent([String].self, forKey: .atmosphere)
    endTime = try container.decodeIfPresent(String.self, forKey: .endTime)
    tickets = try container.decodeIfPresent([Tickets].self, forKey: .tickets)
    videoUri = try container.decodeIfPresent(String.self, forKey: .videoUri)
    startTime = try container.decodeIfPresent(String.self, forKey: .startTime)
    atmosphereIdArray = try container.decodeIfPresent([Int].self, forKey: .atmosphereIdArray)
    uri = try container.decodeIfPresent(String.self, forKey: .uri)
    minimumAge = try container.decodeIfPresent(Int.self, forKey: .minimumAge)
    eventLegalDisclaimerReceipt = try container.decodeIfPresent(String.self, forKey: .eventLegalDisclaimerReceipt)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    music = try container.decodeIfPresent([String].self, forKey: .music)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    receivedTickets = try container.decodeIfPresent([Tickets].self, forKey: .receivedTickets)
    doorPolicy = try container.decodeIfPresent(String.self, forKey: .doorPolicy)
    venueId = try container.decodeIfPresent(Int.self, forKey: .venueId)
  }

}
