//
//  ContactsDatailView.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 18.06.2023.
//

import SwiftUI

struct ContactDatailView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactsDatailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDatailView(contact: Person.getContactList()[0])
    }
}
