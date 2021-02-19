//
//  ApiService.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 19.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import Moya

enum ApiServiceError: Error {
    case unknow
}

struct ApiServiceParameters {
    var lat: Double
    var long: Double
    var placeId: String
    var locationRadius: Double
    var pageNumber: Int
    var pageSize: Int
}

enum ApiService {
    case eventsList(request: ApiServiceParameters)
}

extension ApiService: TargetType {

    var baseURL: URL { return URL(string: Config.API.mainURLString)! }

    var path: String {
        switch self {
            case .eventsList(_):
                return "/events"
        }
    }

    var method: Moya.Method {
        switch self {
            case .eventsList:
                return .get
        }
    }

    var task: Task {
        switch self {
            case let .eventsList(request):
                return .requestParameters(parameters: ["lat": request.lat,
                                                       "long": request.long,
                                                       "placeId": request.placeId,
                                                       "locationRadius": request.locationRadius,
                                                       "pageNumber": request.pageNumber,
                                                       "pageSize": request.pageSize], encoding: URLEncoding.queryString)
        }
    }

    var sampleData: Data {
        switch self {
            default:
                return Data()
        }
    }

    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}
// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
