//
//  ContentView.swift
//  ToDoApp
//
//  Created by Gia Huy on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(dataStore.toDos) { toDo in
                    Button {
                        print("Button hitted")
                    } label: {
                        Text(toDo.name)
                            .font(.title3)
                            .strikethrough(toDo.completed)
                            .foregroundColor(toDo.completed ? .green : Color(.label))
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("My To Dos")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
//#Preview {
//    ContentView()
//}
