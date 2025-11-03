//
//  ContentView.swift
//  ToDoList
//
//  Created by shivansh on 27/10/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            TabView{
                ToDoListView(userId: viewModel.currentUserId)
                    .tabItem{
                        
                        (Label("Home", systemImage: "house"))
                    }
                
                ProfileView()
                    .tabItem{
                        
                        (Label("Profile", systemImage: "person.circle"))
                    }
            }
        }else{
            LoginView()
        }
        
        
    
        
    }
}

#Preview {
    MainView()
}
