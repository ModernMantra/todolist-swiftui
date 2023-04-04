//
//  ListItemViewModel.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 4. 4. 2023..
//

import Foundation

class ListItemViewModel: ObservableObject {
    
    @Published var titles: [ItemDataModel] = []
    
    init() {
        titles.append(
            .init(
                title: "First",
                isCompleted: true
            )
        )
        titles.append(
            .init(
                title: "Second",
                isCompleted: false
            )
        )
        titles.append(
            .init(
                title: "Third",
                isCompleted: false
            )
        )
    }
    
    func delete(indexSet: IndexSet) {
        titles.remove(atOffsets: indexSet)
    }
    
    func move(from: IndexSet, to: Int) {
        titles.move(fromOffsets: from, toOffset: to)
    }
    
}
