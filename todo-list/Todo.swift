//
//  Todo.swift
//  todo-list
//
//  Created by Learn Swift  on 15/6/2567 BE.
//

import SwiftUI
import Observation

@Observable
class Todo: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
