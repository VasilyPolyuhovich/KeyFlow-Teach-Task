//
//  EventsListPresenter.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import Foundation
import Then

class EventsListPresenter {
    weak var view: EventsListViewController?

    init() {}

    func viewDidLoad() {
        fetchData()
    }

    func fetchData(_ page: Int = 1) {
        let service = ApiServiceProvider()
        let param = ApiServiceParameters(lat: Config.API.placeCoordinates.coordinate.latitude,
                                         long: Config.API.placeCoordinates.coordinate.longitude,
                                         placeId: Config.API.placeId,
                                         locationRadius: Config.API.locationRadius,
                                         pageNumber: 1,
                                         pageSize: Config.API.pageSize)


        service.getEventsList(request: param)
            .then { result in
                let dateFormatter = DateFormatter()
                dateFormatter.locale = Locale(identifier: "en_US_POSIX")
                dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

                if let events = result.data?.events, let venues = result.data?.venues {
                    var models: [EventModel] = []
                    
                    events.forEach { event in
                        guard let start = event.startTime, let end = event.endTime else {
                            return
                        }

                        let venueName = venues.first(where: { $0.venueId == event.venueId })?.venueName

                        let startDate = dateFormatter.date(from: start)
                        let endDate = dateFormatter.date(from: end)
                        let model = EventModel(imageUrlString: event.images?.first,
                                               name: event.name,
                                               venueName: venueName,
                                               eventDate: startDate,
                                               timeFrom: startDate,
                                               timeTo: endDate)
                        models.append(model)
                    }

                    self.view?.updateList(models)
                }
            }.onError { error in
               //
            }
    }
}
