//
//  ViewController.swift
//  KeyFlow-Teach-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//

import UIKit

class EventsListViewController: UIViewController {
    var presenter: EventsListPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel(frame: .init(x: 110, y: 110, width: 100, height: 18))
        label.text = "Hello"
        view.addSubview(label)
    }
}

