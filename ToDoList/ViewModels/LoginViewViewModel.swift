//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 12/01/2025.
//

import Foundation

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func login(){
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print("Called")
    }
}
