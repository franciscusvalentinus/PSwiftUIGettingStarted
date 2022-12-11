//
//  User.swift
//  PSwiftUIGettingStarted
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 25/11/22.
//

import SwiftUI

struct User: Identifiable{
    let id = UUID()
    let firstName: String
    let lastName: String
    let title: String
    var email: String
    var companyUrl: String
    var address: String
    
    var visit: Visit
}

extension User{
    static let users = [
        User(firstName: "Jonathan", lastName: "Wong", title: "Senior Software Engineer", email: "mobileunder10@gmail.com", companyUrl: "mobileunder10.com", address: "12345 Highland Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Nermal", lastName: "Vero", title: "Software Engineer", email: "nvero@yahoo.com", companyUrl: "vero123.com", address: "8822 Royal Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Evelyn", lastName: "Smith", title: "Business Analyst", email: "esmith@outlook.com", companyUrl: "esmithvet.com", address: "5544 Camino Del Sur", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Phoebe", lastName: "Lee", title: "Senior Business Analyst", email: "plee@gmail.com", companyUrl: "pleeproducts.com", address: "12345 Phaser Court", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Aaron", lastName: "Huang", title: "Mechanical Engineer", email: "ahuang@gmail.com", companyUrl: "ahrobots.com", address: "789 Robot Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Nathan", lastName: "Chan", title: "Product Engineer", email: "mobileunder10@gmail.com", companyUrl: "mobileunder10.com", address: "12345 Highland Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Avery", lastName: "Johnson", title: "Senior Software Engineer", email: "averyjohnson@outlook.com", companyUrl: "avpharm.com", address: "12121 Pathos Lane", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Harriet", lastName: "Brown", title: "Staff Software Engineer", email: "hbrown@yahoo.com", companyUrl: "catfurrr.com", address: "999 Cat Fur Lane", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Lillian", lastName: "Martin", title: "Software Engineer", email: "lmartinez@gmail.com", companyUrl: "sharksneversleep.com", address: "123 Under the Sea Lane", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
        User(firstName: "Natalie", lastName: "Kim", title: "Software Engineer", email: "nataliekim@yahoo.com", companyUrl: "natalite.com", address: "8888 Hidden Marker Road", visit: Visit(views: 50, events: 60, badges: 7, actions: 80, duration: 90)),
    ]
}
