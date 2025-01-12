//
//  LoginView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 12/01/2025.
//

import SwiftUI

struct LoginView: View {
 
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
               HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                // Login Form
                Form{
                    TextField("Email ...", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password ...", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // Button Login
                    TLButton(title: "Login",
                             color: .blue){
                        // Action
                        viewModel.login()
                    }
                }
                VStack{
                    Text("New arround here ?")
                    NavigationLink("Create a account"
                                   ,destination: RegisterView())
                   
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}


#Preview {
    LoginView()
}
