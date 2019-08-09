//
//  TaskAdder.swift
//  StudyApp
//
//  Created by Katherine Connell on 8/5/19.
//  Copyright © 2019 Katherine Connell. All rights reserved.
//

import SwiftUI

struct Task : Identifiable{
    var id = UUID()
    let name: String
    let color: Color
    
}

struct TaskAdder : View {
    
    @State var taskList = [
        Task(name: "English", color: .blue),
        Task(name: "Math", color: .purple)
    ]
    
    private var taskPlaceholder = "Enter a task..."
    
    @State private var task = ""
    
    private var colors:[Color] = [.red,.blue,.purple]
    
    @State private var isShowingColorPicker = true
    
    func addTask() {
        let color = colors.randomElement()!
        let newTask = Task( name: task, color:color)
        taskList.append(newTask)
    }
    
    var body: some View {
            VStack {
                Text("What are you going to do?").font(.title).padding()
                HStack {
                    TextField(taskPlaceholder, text: $task)
                    Button("add",action: addTask)
                }
                
                List(taskList) { task in
                    HStack {
Text(task.name).foregroundColor(task.color)
                        TotalTimeSelector()
                        
                    }
                }
                NavigationLink.init("Next", destination: TimeDivider())
            }.padding().background(Color.init(red: 1, green: 0.937, blue: 0.8901, opacity: 1))
        }
}


#if DEBUG
struct TaskAdder_Previews : PreviewProvider {
    static var previews: some View {
        TaskAdder()
    }
}
#endif
