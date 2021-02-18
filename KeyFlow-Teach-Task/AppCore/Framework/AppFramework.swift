//
//  AppFramework.swift
//  KeyFlow-Teach-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//  Copyright © 2021 KeyFlow. All rights reserved.
//

import DITranquillity

public class AppFramework: DIFramework {
    public static func load(container: DIContainer) {
        container.append(part: AppPart.self)
    }
}
