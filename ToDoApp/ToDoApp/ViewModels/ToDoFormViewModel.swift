//
//  ToDoFormViewModel.swift
//  ToDoApp
//
//  Created by Gia Huy on 06/03/2024.
//

import Foundation

class ToDoFormViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var complete = false
    var id: String?
    
    var updating: Bool {
        id != nil
    }
    
    var isDisabled: Bool {
        name.isEmpty
    }
    
    init() {}
    
    init(_ currentTodo: ToDo) {
        self.name = currentTodo.name
        self.complete = currentTodo.completed
        self.id = currentTodo.id
    }
    
}
