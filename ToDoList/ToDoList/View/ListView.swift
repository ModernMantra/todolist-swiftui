//
//  ListView.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var viewModel: ListItemViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.titles) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: viewModel.delete)
            .onMove(perform: viewModel.move)
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
