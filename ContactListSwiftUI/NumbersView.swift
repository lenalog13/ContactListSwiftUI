//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 18.06.2023.
//

import SwiftUI

struct NumbersView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactList) { contact in
                Section(contact.fullName) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contactList: Person.getContactList())
    }
}
