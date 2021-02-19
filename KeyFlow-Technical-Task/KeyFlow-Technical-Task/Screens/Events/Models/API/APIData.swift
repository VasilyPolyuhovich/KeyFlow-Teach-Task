//
//  APIData.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct APIData: Codable {

  enum CodingKeys: String, CodingKey {
    case events
    case venues
    case discoverEventIds
    case recommendedEventIds
    case hotEventIds
  }

  var events: [Events]?
  var venues: [Venues]?
  var discoverEventIds: [Int]?
  var recommendedEventIds: [Int]?
  var hotEventIds: [Int]?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    events = try container.decodeIfPresent([Events].self, forKey: .events)
    venues = try container.decodeIfPresent([Venues].self, forKey: .venues)
    discoverEventIds = try container.decodeIfPresent([Int].self, forKey: .discoverEventIds)
    recommendedEventIds = try container.decodeIfPresent([Int].self, forKey: .recommendedEventIds)
    hotEventIds = try container.decodeIfPresent([Int].self, forKey: .hotEventIds)
  }

}
