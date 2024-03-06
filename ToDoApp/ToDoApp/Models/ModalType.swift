//
//  ModalType.swift
//  ToDoApp
//
//  Created by Gia Huy on 06/03/2024.
//

import SwiftUI

enum ModalType: Identifiable, View {
    case new
    case update(ToDo)
    
    var id:String {
        switch self {
        case .new:
            return "new"
        case .update:
            return "update"
        }
    }
    
    var body: some View {
        switch self {
        case .new:
            return ToDoFormView(formVM: ToDoFormViewModel())
        case .update(let todo):
            return ToDoFormView(formVM: ToDoFormViewModel(todo))
        }
    }
}
