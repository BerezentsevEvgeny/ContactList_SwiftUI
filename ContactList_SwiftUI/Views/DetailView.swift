//
//  DetailView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct DetailView: View {
    let contact: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
                .offset(x: 75)
            RowView(imageName: "phone", text: contact.phoneNumber)
            RowView(imageName: "tray", text: contact.email)
        }
        .navigationTitle(contact.fullName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: Person.getContactList().first!)
    }
}
