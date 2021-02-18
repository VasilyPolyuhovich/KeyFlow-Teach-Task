//
//  AppPart.swift
//  KeyFlow-Teach-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import DITranquillity

class AppPart: DIPart {
    static func load(container: DIContainer) {
        container.registerStoryboard(name: "Main")
        
        container.register(EventsListPresenter.init)
            .injection { $0.view = $1 }

        container.register(EventsListViewController.self)
            .injection { $0.presenter = $1 }

    }
}
