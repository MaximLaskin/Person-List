//
//  CustomTableViewCell.swift
//  Person List
//
//  Created by Swift on 31.08.2022.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
