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
        List(contactList, id: \.self) { contact in
            NavigationLink(destination: ContactDatailView(contact: contact)) {
                Text("\(contact.name) \(contact.surname)")
            }
        }
        .navigationTitle("ContactList")
        .listStyle(.plain)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContactList())
    }
}
