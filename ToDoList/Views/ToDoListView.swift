//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 15/01/2025.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    init(userId: String){
        self.userId = userId
        
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
                    
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
