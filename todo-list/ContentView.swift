//
//  ContentView.swift
//  todo-list
//
//  Created by Learn Swift  on 15/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todoList: [Todo] = [
        Todo(title: "Meeting with Tom", isDone: false),
        Todo(title: "Math examination", isDone: false)
    ]
    
    var body: some View {
        VStack {
            Text("My Todo List")
                .font(.title)
            
            ForEach(todoList) { todo in
                HStack {
                    Text(todo.title)
                        .font(.title3)
                        .foregroundStyle(.blue)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "checkmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                }
                .padding()
                .background(Color.black.opacity(0.08))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
