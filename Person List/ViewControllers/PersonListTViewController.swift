//
//  PersonListTViewController.swift
//  Person List
//
//  Created by Swift on 30.08.2022.
//

import UIKit

final class PersonListTViewController: UITableViewController {

    private var personList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath) as? CustomTableViewCell {

            let person = personList[indexPath.row]

            var content = cell.defaultContentConfiguration()
            
            content.text = person.fullName

            cell.contentConfiguration = content

            //   cell.fullNameLabel.text = person.fullName

            return cell
        }
        return UITableViewCell()
    }

//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        80
//    }

    // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)


    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = personList[index.row]
        personInfoVC.person = person
    }
}
