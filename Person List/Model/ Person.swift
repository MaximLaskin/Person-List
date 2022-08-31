//
//   Person.swift
//  Person List
//
//  Created by Swift on 30.08.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPersonList() -> [Person] {
        let dataManager = DataManager()

        var person: [Person] = []

        let names = dataManager.names.randomElement() ?? ""
        let surnames = dataManager.surnames.randomElement() ?? ""
        let emails = dataManager.emails.randomElement() ?? ""
        let phoneNumbers = dataManager.phoneNumbers.randomElement() ?? ""

        person.append(Person(name: names, surname: surnames, email: emails, phoneNumber: phoneNumbers))

        return person
    }
}
