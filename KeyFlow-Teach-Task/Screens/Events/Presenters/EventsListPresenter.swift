//
//  EventsListPresenter.swift
//  KeyFlow-Teach-Task
//
//  Created by Vasyl Poliukhovych (Hammer) on 18.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import Foundation

class EventsListPresenter {
    weak var view: EventsListViewController?

    init(view: EventsListViewController) {
        self.view = view
    }
}
