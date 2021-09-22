//
//  NumbersView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct NumbersView: View {
    var contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            if #available(iOS 15.0, *) {
                Section(contact.fullName) {
                    RowView(imageName: "phone", text: contact.phoneNumber)
                    RowView(imageName: "tray", text: contact.email)
                }
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
