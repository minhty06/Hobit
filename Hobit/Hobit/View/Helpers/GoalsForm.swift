//
//  AddView.swift
//  Hobit
//
//  Created by Han Gao on 4/17/23.
//

import SwiftUI


// MARK- to be edited
struct GoalsForm: View {
    @State private var goalName: String = ""
    @State private var goalDetail: String = ""
    //Default days for a good goal is 27
    @State private var goalDuration: Int = 5
    @State private var tasks: [String] = []
    @State private var newTask: String = ""
    
    let startDate = Date.now
    let secondsFromStart = Date.now.addingTimeInterval(20)
    let minutesFromStart = Date.now.addingTimeInterval(20 * 60)
    let hoursFromStart = Date.now.addingTimeInterval(5 * 60 * 60)
    let daysFromStart = Date.now.addingTimeInterval(24 * 60 * 60)
    let monthsFromStart = Date.now.addingTimeInterval(5 * 24 * 60 * 60)
    let yearsFromStart = Date.now.addingTimeInterval(365 * 24 * 60 * 60)
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Name")) {
                        TextField("Enter goal's name", text: $goalName)
                    }
                    
                    Section(header: Text("Goal Details")) {
                        TextField("Enter goal's details", text: $goalDetail)
                    }
                    
                    Section(header: Text("Start Date")) {
                        Text(startDate, style: .date)
                    }
                    
                    Section(header: Text("End Date")) {
                        Text(yearsFromStart, style: .date)
                    }
                    
                    Section(header: Text("Set Milestones")) {
                        Stepper(value: $goalDuration, in: 1...30) {
                            Text("\(goalDuration) days")
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
                    
                    // Can Pass in a function if needed to do something with data
                    Button(action: {
                    }){
                        Text("Save")
                    }
                }
            }
            .navigationTitle("New Goal")
        }
    }
}

struct GoalsForm_Previews: PreviewProvider {
    static var previews: some View {
        GoalsForm()
    }
}
