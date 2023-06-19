//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 18.06.2023.
//

import SwiftUI

struct ContactsView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactList) { contact in
                NavigationLink(
                    contact.fullName,
                    destination: ContactDatailView(contact: contact)
                )
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContactList())
    }
}
