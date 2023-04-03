//
//  ListView.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

struct ListView: View {
    
    @State var titles: [String] = [
        "First Item",
        "Second Item",
        "Third Item"
    ]
    
    var body: some View {
        List {
            ForEach(titles, id: \.self) { title in
                ListRowView(title: title)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List ✍️")
        .navigationBarItems(
            leading:
                EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
    
}

// MARK: - Preview -

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
