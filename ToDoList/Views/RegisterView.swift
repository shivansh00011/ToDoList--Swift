//
//  RegisterView.swift
//  ToDoList
//
//  Created by shivansh on 27/10/25.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModels = RegisterViewViewModel()
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form{
                TextField("Full Name", text: $viewModels.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModels.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModels.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(buttontext: "Create Account", background: .green){
                    viewModels.register()
                    
                }
            }
            .offset(y:-50)
            
            
            
            
            
            
            
            
            Spacer()
        }
    
    }
}

#Preview {
    RegisterView()
}
