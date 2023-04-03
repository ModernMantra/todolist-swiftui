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
            textfield
            saveButton
        }
        .navigationTitle("Add ➕")
    }
}

// MARK: - Subviews -

fileprivate extension AddView {
    
    var textfield: some View {
        TextField(text: $textFieldText) {
            Text("Enter your string here")
        }
        .roundStyle(background: Color.gray.opacity(0.2))
    }
    
    var saveButton: some View {
        Button(action: {
            
        }) {
            Text("Save".capitalized)
                .roundStyle(background: Color.blue)
                .foregroundColor(.white)
        }
    }
    
}

// MARK: - Screen styling -

fileprivate extension View {
    
    func roundStyle(background: Color) -> some View {
        self
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(background)
            .cornerRadius(10)
            .padding(.horizontal)
    }
    
}

// MARK: - Preview -

struct AddView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
    
}
