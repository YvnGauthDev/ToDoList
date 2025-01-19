//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 12/01/2025.
//

import Foundation

/// ViewModel for the list of items  view
/// Primary lab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView =  false
    
    init() {}
}
