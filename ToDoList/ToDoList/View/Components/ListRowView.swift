//
//  ListRowView.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

struct ListRowView: View {
    
    @State var item: ItemDataModel
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
            Text(item.title)
        }
    }

}

// MARK: - Preview -

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: .init(title: "Hello", isCompleted: true))
    }
}
