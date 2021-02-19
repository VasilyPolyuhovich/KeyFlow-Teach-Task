//
//  Tickets.swift
//
//  Created by Vasyl Poliukhovych on 18.02.2021
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Tickets: Codable {

  enum CodingKeys: String, CodingKey {
    case currency
    case soldOut
    case bookingFee
    case requestableTicketRejectedMessage
    case priceTax
    case bookingFeeBeforeTax
    case color
    case requestableTicketApprovedMessage
    case title
    case saleEnd
    case lowestBidPrice
    case drinkTableId
    case taxRatio
    case validForCards
    case totalPrice
    case kfChargeOnlyReservationFee
    case type
    case bookingFeeTax
    case vipFreeEntry
    case quantity
    case biddableItemId
    case priceBeforeTax
    case isRequestableTicket
    case descriptionValue = "description"
    case saleStart
    case lastEntryTime
    case price
    case taxStrategy
    case ticketsSold
    case payInvites
    case enabled
    case freeInvites
    case id
    case maxTicketsPerGuest
    case taxName
  }

  var currency: String?
  var soldOut: Bool?
  var bookingFee: Int?
  var requestableTicketRejectedMessage: String?
  var priceTax: Int?
  var bookingFeeBeforeTax: Int?
  var color: String?
  var requestableTicketApprovedMessage: String?
  var title: String?
  var saleEnd: String?
  var lowestBidPrice: Int?
  var drinkTableId: Int?
  var taxRatio: Int?
  var validForCards: [Int]?
  var totalPrice: Int?
  var kfChargeOnlyReservationFee: Bool?
  var type: String?
  var bookingFeeTax: Int?
  var vipFreeEntry: Bool?
  var quantity: Int?
  var biddableItemId: Int?
  var priceBeforeTax: Int?
  var isRequestableTicket: Bool?
  var descriptionValue: String?
  var saleStart: String?
  var lastEntryTime: String?
  var price: Int?
  var taxStrategy: String?
  var ticketsSold: Int?
  var payInvites: Int?
  var enabled: Bool?
  var freeInvites: Int?
  var id: Int?
  var maxTicketsPerGuest: Int?
  var taxName: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    currency = try container.decodeIfPresent(String.self, forKey: .currency)
    soldOut = try container.decodeIfPresent(Bool.self, forKey: .soldOut)
    bookingFee = try container.decodeIfPresent(Int.self, forKey: .bookingFee)
    requestableTicketRejectedMessage = try container.decodeIfPresent(String.self, forKey: .requestableTicketRejectedMessage)
    priceTax = try container.decodeIfPresent(Int.self, forKey: .priceTax)
    bookingFeeBeforeTax = try container.decodeIfPresent(Int.self, forKey: .bookingFeeBeforeTax)
    color = try container.decodeIfPresent(String.self, forKey: .color)
    requestableTicketApprovedMessage = try container.decodeIfPresent(String.self, forKey: .requestableTicketApprovedMessage)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    saleEnd = try container.decodeIfPresent(String.self, forKey: .saleEnd)
    lowestBidPrice = try container.decodeIfPresent(Int.self, forKey: .lowestBidPrice)
    drinkTableId = try container.decodeIfPresent(Int.self, forKey: .drinkTableId)
    taxRatio = try container.decodeIfPresent(Int.self, forKey: .taxRatio)
    validForCards = try container.decodeIfPresent([Int].self, forKey: .validForCards)
    totalPrice = try container.decodeIfPresent(Int.self, forKey: .totalPrice)
    kfChargeOnlyReservationFee = try container.decodeIfPresent(Bool.self, forKey: .kfChargeOnlyReservationFee)
    type = try container.decodeIfPresent(String.self, forKey: .type)
    bookingFeeTax = try container.decodeIfPresent(Int.self, forKey: .bookingFeeTax)
    vipFreeEntry = try container.decodeIfPresent(Bool.self, forKey: .vipFreeEntry)
    quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
    biddableItemId = try container.decodeIfPresent(Int.self, forKey: .biddableItemId)
    priceBeforeTax = try container.decodeIfPresent(Int.self, forKey: .priceBeforeTax)
    isRequestableTicket = try container.decodeIfPresent(Bool.self, forKey: .isRequestableTicket)
    descriptionValue = try container.decodeIfPresent(String.self, forKey: .descriptionValue)
    saleStart = try container.decodeIfPresent(String.self, forKey: .saleStart)
    lastEntryTime = try container.decodeIfPresent(String.self, forKey: .lastEntryTime)
    price = try container.decodeIfPresent(Int.self, forKey: .price)
    taxStrategy = try container.decodeIfPresent(String.self, forKey: .taxStrategy)
    ticketsSold = try container.decodeIfPresent(Int.self, forKey: .ticketsSold)
    payInvites = try container.decodeIfPresent(Int.self, forKey: .payInvites)
    enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
    freeInvites = try container.decodeIfPresent(Int.self, forKey: .freeInvites)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    maxTicketsPerGuest = try container.decodeIfPresent(Int.self, forKey: .maxTicketsPerGuest)
    taxName = try container.decodeIfPresent(String.self, forKey: .taxName)
  }

}
