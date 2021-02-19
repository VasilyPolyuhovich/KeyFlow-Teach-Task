//
//  KeyFlowApiResponse.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct KeyFlowApiResponse: Codable {

  enum CodingKeys: String, CodingKey {
    case serverTime
    case pagination
    case status
    case data
  }

  var serverTime: String?
  var pagination: Pagination?
  var status: Int?
  var data: APIData?

  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    serverTime = try container.decodeIfPresent(String.self, forKey: .serverTime)
    pagination = try container.decodeIfPresent(Pagination.self, forKey: .pagination)
    status = try container.decodeIfPresent(Int.self, forKey: .status)
    data = try container.decodeIfPresent(APIData.self, forKey: .data)
  }

}
