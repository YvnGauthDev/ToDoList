//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 12/01/2025.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start Organizing ToDos",
                       angle: -15,
                       background: .orange)
            // Form
            Form{
                TextField("Full name ...", text:$name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email ...", text:$email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password ...", text:$password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register",
                         color: .green
                ){
                    // Action 
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
