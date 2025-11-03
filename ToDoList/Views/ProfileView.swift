//
//  ProfileView.swift
//  ToDoList
//
//  Created by shivansh on 27/10/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel() 
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    Image(systemName:"person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 125, height: 125)
                        .padding()
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Name:")
                                .bold()
                            Text(user.name)
                        }
                        .padding()
                        HStack{
                            Text("Email:")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack{
                            Text("MemberSince:")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                    }.padding()
                    
                    Button("Log Out"){
                        viewModel.logOut()
                    }
                    .tint(.red)
                    .padding()
                    
                    Spacer()
                } else{
                    Text("Loading Profile...")
                }
                
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
        
    }
}

#Preview {
    ProfileView()
}
