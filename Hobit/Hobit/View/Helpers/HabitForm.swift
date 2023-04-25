//
//  HabitForm.swift
//  Hobit
//
//  Created by Minh Ton on 4/18/23.
//

import SwiftUI

struct HabitForm: View {
    @State private var habitName: String = ""
    @State private var habitDetail: String = ""
    //Default days for a good habit is 27
    @State private var habitDuration: Int = 27
//    @State private var tasks: [String] = []
//    @State private var newTask: String = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: HobitViewModel

    var body: some View {
            
            NavigationView {
                VStack {
                    Form {
                        Section(header: Text("Name")) {
                            TextField("Enter habit's name", text: $habitName)
                        }
                        
                        Section(header: Text("Details")) {
                            TextField("Enter habit's details", text: $habitDetail)
                        }
                        
                        Section(header: Text("Duration")) {
                            Stepper(value: $habitDuration, in: 1...30) {
                                Text("\(habitDuration) days")
                            }
                        }
                        
                        // Placeholder for future feature: Reminder
                        
                        Section(header: Text("Reminders")) {
                            Button(action: {
                                //                            tasks.append(newTask)
                                //                            newTask = ""
                            }, label: {
                                Text("Add Reminder")
                            })
                        }
                        
                        
                        Button(action: {
                            var newTasks: [Task] = []
                            for i in 1...habitDuration {
                                newTasks.append(Task(taskName: "task\(i)", completed: false))
                            }
                            let newHabit = Habit(habitName: habitName, habitDetails: habitDetail, habitDuration: habitDuration, tasks: newTasks)
                            
                            viewModel.addHabit(newHabit)
                            presentationMode.wrappedValue.dismiss()
                            
                        }) {
                            Text("Save")
                        }
                        
                        
                    }
                }
                .navigationTitle("New Habit")
            }
    }
}

struct HabitForm_Previews: PreviewProvider {
    static var previews: some View {
        HabitForm()
    }
}
