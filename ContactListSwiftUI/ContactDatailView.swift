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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContactsDatailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDatailView(contact: Person.getContactList()[0])
    }
}
