//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by shivansh on 27/10/25.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
