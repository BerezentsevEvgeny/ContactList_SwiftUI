//
//  NumbersView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    if #available(iOS 15.0, *) {
                        Section(contact.fullName) {
                            RowView(imageName: "phone", text: contact.phoneNumber)
                            RowView(imageName: "tray", text: contact.email)
                        }
                    } else {
                        RowView(imageName: "phone", text: contact.phoneNumber)
                        RowView(imageName: "tray", text: contact.email)
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
