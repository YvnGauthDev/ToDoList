//
//  ProfileView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 17/01/2025.
//

import SwiftUI

struct ProfileView: View {
        
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
