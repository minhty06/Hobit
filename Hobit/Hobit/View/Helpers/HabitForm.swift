//
//  HabitForm.swift
//  Hobit
//
//  Created by Minh Ton on 4/18/23.
//

import SwiftUI

struct HabitForm: View {
    @State private var HabitName: String = ""
    @State private var HabitDetail: String = ""
    //Default days for a good habit is 27
    @State private var HabitDuration: Int = 27
    @State private var tasks: [String] = []
    @State private var newTask: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Name")) {
                        TextField("Enter habit's name", text: $HabitName)
                    }
                    
                    Section(header: Text("Details")) {
                        TextField("Enter habit's details", text: $HabitDetail)
                    }
                    
                    Section(header: Text("Duration")) {
                        Stepper(value: $HabitDuration, in: 1...30) {
                            Text("\(HabitDuration) days")
                        }
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
                    }){
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
