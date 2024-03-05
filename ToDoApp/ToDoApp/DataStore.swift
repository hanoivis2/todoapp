//
//  DataStore.swift
//  ToDoApp
//
//  Created by Gia Huy on 05/03/2024.
//

import Foundation

class DataStore: ObservableObject {
    
    @Published var toDos: [ToDo] = []
    
    init() {
        loadToDos()
    }
    
    func addToDo(_ toDo: ToDo) {
        
    }
    
    func updateToDo(_ toDo: ToDo) {
        
    }
    
    func deleteToDo(at indexSet: IndexSet) {
        
    }
    
    func loadToDos() {
        toDos = ToDo.sampleData
    }
    
    func saveToDos() {
        print("Saving toDos to file system eventually")
    }
}
