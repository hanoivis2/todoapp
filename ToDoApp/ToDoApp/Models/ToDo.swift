//
//  ToDo.swift
//  ToDoApp
//
//  Created by Gia Huy on 05/03/2024.
//

import Foundation

struct ToDo: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false
    
    static var sampleData: [ToDo] {
        [
            ToDo(name: "Get Gloceries"),
            ToDo(name: "Make Dr. appointment", completed: true)
        ]
    }
}
