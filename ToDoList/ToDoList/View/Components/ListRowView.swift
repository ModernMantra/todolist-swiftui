//
//  ListRowView.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark")
            Text(title)
        }
    }
}

// MARK: - Preview -

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Hello World")
    }
}
