//
//  GoalsForm.swift
//  Hobit
//
//  Created by Minh Ton on 4/17/23.
//

import SwiftUI

struct GoalsForm: View {
    @State private var goalName: String = ""
    @State private var goalDetail: String = ""
    //Default days for a good goal is 27
    @State private var goalDuration: Int = 27
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Goal Name")) {
                        TextField("Enter goal name", text: $goalName)
                    }
                    
                    Section(header: Text("Goal Details")) {
                        TextField("Enter goal details", text: $goalDetail)
                    }
                    
                    Section(header: Text("Goal Duration")) {
                        Stepper(value: $goalDuration, in: 1...30) {
                            Text("\(goalDuration) days")
                        }
                    }
                    Button(action: {
                    }){
                        Text("Submit")
                    }
                }
            }
            .navigationTitle("Goals Form")
        }
    }
}

struct GoalsForm_Previews: PreviewProvider {
    static var previews: some View {
        GoalsForm()
    }
}
