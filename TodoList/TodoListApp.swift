//
//  TodoListApp.swift
//  TodoList
//
//  Created by Iran on 16/12/24.
//

import SwiftUI

/*
 MVVM Architecture
 
 M: Data point
 V: UI
 VM: Manages Models for View
 
*/

@main
struct TodoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
