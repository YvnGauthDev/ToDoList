//
//  NewItem.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 12/01/2025.
//

import SwiftUI

struct NewItem: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack{
            Text("New Item ")
                .font(.system(size: 32))
                .bold()
            Form{
                // Title
                TextField("Title", text:$viewModel.title  )
                    .textFieldStyle(DefaultTextFieldStyle())
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "save",
                         color: .pink){
                    viewModel.save()
                    
                }
                         .padding()
                
                         
            }
        }
    }
}

#Preview {
    NewItem()
}
