//
//  EventViewCell.swift
//  KeyFlow-Technical-Task
//
//  Created by Vasyl Poliukhovych (Hammer) on 19.02.2021.
//

import UIKit
import Kingfisher

class EventViewCell: UITableViewCell {
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var clubNameLabel: UILabel!
    @IBOutlet private weak var dayNameLabel: UILabel!
    @IBOutlet private weak var dayNumberLabel: UILabel!
    @IBOutlet private weak var monthName: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(with data: EventModel) {
        titleLabel.text = data.name
        clubNameLabel.text = data.venueName
    }

    private func setup() {
        containerView.layer.cornerRadius = 5.0
        containerView.backgroundColor = .white
        containerView.layer.borderWidth = 0.1
        containerView.layer.borderColor = UIColor.lightGray.cgColor
        containerView.layer.shadowColor =  UIColor.lightGray.cgColor
        containerView.layer.shadowRadius = 1.0
        containerView.layer.shadowOffset = CGSize(width: -1, height: 4)
        containerView.layer.shadowOpacity = 0.3
    }
}
