//
//  HabitForm.swift
//  Hobit
//
//  Created by Minh Ton on 4/17/23.
//


import SwiftUI

struct RoutineForm: View {
    @State private var routineName: String = ""
    @State private var routineDetail: String = ""
    @State private var tasks: [String] = []
    @State private var newTask: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Routine Name")) {
                        TextField("Enter routine name", text: $routineName)
                    }
                    
                    Section(header: Text("Details")) {
                        TextField("Enter Detail", text: $routineDetail)
                    }
                    
                    Section(header: Text("Routine Tasks")) {
                        ForEach(tasks, id: \.self) { task in
                            Text(task)
                        }
                        TextField("Enter new task", text: $newTask)
                        Button(action: {
                            tasks.append(newTask)
                            newTask = ""
                        }, label: {
                            Text("Add Task")
                        })
                    }
                    // Can Pass in a function if needed to do something with data
                    Button(action: {
                    }) {
                        Text("Submit Routine")
                    }
                }
            }
            .navigationTitle("Routine Form")
        }
    }
}

struct RoutineForm_Previews: PreviewProvider {
    static var previews: some View {
        RoutineForm()
    }
}

