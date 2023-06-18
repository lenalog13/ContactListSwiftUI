//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Елена Логинова on 18.06.2023.
//

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
