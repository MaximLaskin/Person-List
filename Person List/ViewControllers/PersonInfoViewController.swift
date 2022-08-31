//
//  PersonInfoViewController.swift
//  Person List
//
//  Created by Swift on 31.08.2022.
//

import UIKit

final class PersonInfoViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!

    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        fullNameLabel.text = person.fullName
        emailLabel.text = person.email
        phoneNumberLabel.text = person.phoneNumber

        [fullNameLabel, emailLabel, phoneNumberLabel].forEach {$0?.textColor = .white }
    }
}
