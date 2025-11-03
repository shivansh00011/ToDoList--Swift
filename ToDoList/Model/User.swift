//
//  User.swift
//  ToDoList
//
//  Created by shivansh on 27/10/25.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
