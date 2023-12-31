//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 18.06.2023.
//

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}


extension Person {
    
    static func getContactList() -> [Person] {
        let data = DataManager.shared
        var contactList: [Person] = []
        
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        let emails = data.emails.shuffled()
        
        let count = min(names.count,
                        surnames.count,
                        phoneNumbers.count,
                        emails.count)
        
        
        for index in 0..<count {
            contactList.append(
                Person(id: index,
                       name: names[index],
                       surname: surnames[index],
                       phoneNumber: phoneNumbers[index],
                       email: emails[index])
            )
        }
        
        return contactList
    }
    
}
