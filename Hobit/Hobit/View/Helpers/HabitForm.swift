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
                    // Can Pass in a function if needed to do something with data
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
