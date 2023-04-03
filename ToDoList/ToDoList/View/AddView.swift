//
//  AddView.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

struct AddView: View {
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            TextField(text: $textFieldText) {
                Text("Enter your string here")
            }
            .frame(height: 50)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
            Button(action: {
                
            }) {
                Text("Save")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .navigationTitle("Add ➕")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
