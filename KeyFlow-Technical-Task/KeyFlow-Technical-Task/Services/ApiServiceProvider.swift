//
//  ApiServiceProvider.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 19.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import Moya
import Then

class ApiServiceProvider {
    private let provider: MoyaProvider<ApiService>

    init() {
        self.provider = MoyaProvider<ApiService>()
    }

    func getEventsList(request: ApiServiceParameters) -> Promise<KeyFlowApiResponse> {
        return Promise<KeyFlowApiResponse> {[weak self] resolve, reject in
            guard let self = self else {
                reject(ApiServiceError.unknow)
                return
            }

            self.provider.request(.eventsList(request: request)) { result in
                switch result {
                    case .success(let responsee):
                        guard responsee.statusCode == 200 else {
                            reject(ApiServiceError.unknow)
                            return
                        }

                        let data = responsee.data
                        do {
                            let apiData = try JSONDecoder().decode(KeyFlowApiResponse.self, from: data)
                            DispatchQueue.main.async {
                                resolve(apiData)
                            }
                        } catch {
                            reject(error)
                        }

                    case .failure(let error):
                        reject(error)
                }
            }
        }
    }

}
