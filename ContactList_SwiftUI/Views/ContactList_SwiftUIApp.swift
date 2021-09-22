//
//  ContactList_SwiftUIApp.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

@main
struct ContactList_SwiftUIApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContactsTabView()
        }
    }
}
