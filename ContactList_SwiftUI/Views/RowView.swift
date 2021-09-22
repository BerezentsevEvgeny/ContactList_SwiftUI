//
//  RowView.swift
//  ContactList_SwiftUI
//
//  Created by Евгений Березенцев on 22.09.2021.
//

import SwiftUI

struct RowView: View {
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName )
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(imageName: "phone", text: "jonn@gmail.com")
    }
}
