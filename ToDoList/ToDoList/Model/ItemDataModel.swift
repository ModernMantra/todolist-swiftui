//
//  ItemDataModel.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 4. 4. 2023..
//

import Foundation
import SwiftUI

struct ItemDataModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let isCompleted: Bool
    
    lazy var image: String = {
        return isCompleted ? "checkmark.circle" : "circle"
    }()
    
}
