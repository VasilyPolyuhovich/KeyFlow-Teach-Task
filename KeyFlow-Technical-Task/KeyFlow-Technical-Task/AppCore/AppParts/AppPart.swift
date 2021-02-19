//
//  AppPart.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import DITranquillity

class AppPart: DIPart {
    static func load(container: DIContainer) {
        container.registerStoryboard(name: "Main")
        container.register(EventsListViewController.self)

        container.register(EventsListPresenter.init)
            .lifetime(.objectGraph)
    }
}
