//
//  ViewController.swift
//  KeyFlow-Tech-Task
//
//  Created by Vasyl Poliukhovych on 18.02.2021.
//

import UIKit

class EventsListViewController: UIViewController {
    @IBOutlet private weak var goToButton: UIButton!
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var navigationBar: UINavigationBar!

    var presenter: EventsListPresenter!

    private var model: [EventModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "default")
        presenter.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupButtons()
    }

    func updateList(_ data: [EventModel]) {
        self.model = data
        tableView.reloadData()
    }

    private func setupButtons() {
        goToButton.layer.cornerRadius = 10.0
        goToButton.backgroundColor = .black
        goToButton.setTitleColor(.white, for: .normal)
        goToButton.setTitle(NSLocalizedString("GO OUT TONIGHT", comment: ""), for: .normal)

    }
}

extension EventsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension EventsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EventViewCell else {
            return tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath)
        }

        let item = model[indexPath.item]
        cell.setup(with: item)

        if let imageName = item.imageUrlString, !imageName.isEmpty {
            let url = URL(string: "\(Config.API.mainImageStorageUrl)\(imageName)")
            cell.eventImage.kf.setImage(with: url, placeholder: nil, options: [.transition(.fade(0.5))])
        }else{
            cell.eventImage.image = nil
        }

        return cell
    }
}
