//
//  TabView.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 16.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersView(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
