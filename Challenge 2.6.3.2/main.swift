//
//  main.swift
//  Challenge 2.6.3.2
//
//  Created by Markus Wirtz on 07.08.24.
//

import Foundation


struct Contact {
  let name: String
  let phone: String
}

let contacts = [
  Contact(name: "Ulf", phone: "+49161000123"),
  Contact(name: "Johanna", phone: "+4915100324"),
]

func contactCard(contact: Contact) -> String {
  return
    """
    ==========
    Kontakt
    ==========
    Name: \(contact.name)
    Telefonnummer: \(contact.phone)
    """
}

let contactCards = contacts.map{
    contactCard(contact: $0)
}

// 2-6.3.2 Coding Challenge
contactCards.forEach() {
    print($0)
}

contactCards.forEach { contacts in
    print(contacts)
}
