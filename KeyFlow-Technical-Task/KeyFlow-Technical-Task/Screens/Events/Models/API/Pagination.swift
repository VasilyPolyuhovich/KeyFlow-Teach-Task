//
//  Pagination.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Pagination: Codable {

  enum CodingKeys: String, CodingKey {
    case currentPageId
    case count
    case pageSize
    case totalPages
    case currentPage
    case maxPageSize
    case selfItem = "self"
    case pageIds
  }

  var currentPageId: String?
  var count: Int?
  var pageSize: Int?
  var totalPages: Int?
  var currentPage: Int?
  var maxPageSize: Int?
  var selfItem: String?
  var pageIds: [String]?


  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    currentPageId = try container.decodeIfPresent(String.self, forKey: .currentPageId)
    count = try container.decodeIfPresent(Int.self, forKey: .count)
    pageSize = try container.decodeIfPresent(Int.self, forKey: .pageSize)
    totalPages = try container.decodeIfPresent(Int.self, forKey: .totalPages)
    currentPage = try container.decodeIfPresent(Int.self, forKey: .currentPage)
    maxPageSize = try container.decodeIfPresent(Int.self, forKey: .maxPageSize)
    selfItem = try container.decodeIfPresent(String.self, forKey: .selfItem)
    pageIds = try container.decodeIfPresent([String].self, forKey: .pageIds)
  }

}
