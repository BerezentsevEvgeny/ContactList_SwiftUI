//
//  ContentView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct ListView: View {
    var contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(contact.fullName) {
                DetailView(contact: contact)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(contacts: Person.getContactList())
    }
}
