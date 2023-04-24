//
//  HabitForm.swift
//  Hobit
//
//  Created by Minh Ton on 4/17/23.
//

//
import SwiftUI

struct RoutineForm: View {
    
    @State private var routineName: String = ""
    @State private var routineDetail: String = ""
    @State private var tasks: [String] = []
    @State private var newTask: String = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: RoutineViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Name")) {
                        TextField("Enter routine's name", text: $routineName)
                    }
                    
                    Section(header: Text("Details")) {
                        TextField("Enter routine's details", text: $routineDetail)
                    }
                    
                    
                    Section(header: Text("Tasks")) {
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
                    
                    // Placeholder for future feature: Reminder
                    
                    Section(header: Text("Reminders")) {
                        Button(action: {
                            tasks.append(newTask)
                            newTask = ""
                        }, label: {
                            Text("Add Reminder")
                        })
                    }
                    
                    Button(action: {
                        tasks.append(newTask)
                        let newRoutine = Routine(routineName: routineName, routineDetails: routineDetail, tasks: tasks.map { Task(taskName: $0, completed: false) })
                        print(newRoutine)
                        viewModel.addRoutine(newRoutine)
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Save")
                    }
                    
                }
            }
            .navigationTitle("New Routine")
        }
    }
}


struct RoutineForm_Previews: PreviewProvider {
    static var previews: some View {
        RoutineForm()
    }
}

