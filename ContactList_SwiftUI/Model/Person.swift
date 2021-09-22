//
//  Model.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let names = ContactsManager.shared.names.shuffled()
        let surnames = ContactsManager.shared.surnames.shuffled()
        let emails = ContactsManager.shared.emails.shuffled()
        let phones = ContactsManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count) - 1
        
        for index in 0...iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
    
