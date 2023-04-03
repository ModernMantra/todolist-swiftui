//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Kerim Njuhovic on 3. 4. 2023..
//

import SwiftUI

/**
 
 MVVM Architecture
 
 Model - data point
 View - user interface
 ViewModel - manages model for the view
 
 */

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
