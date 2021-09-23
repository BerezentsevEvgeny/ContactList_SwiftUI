//
//  TabView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct ContactsTabView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsTabView()
    }
}
