//
//  AddView.swift
//  Hobit
//
//  Created by Han Gao on 4/17/23.
//

import SwiftUI

struct AddView: View {
    @StateObject private var viewModel = HobitViewModel()
    var body: some View {
 
        NavigationStack {
            
            Text("Add")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(30)
                .fontWeight(.heavy)
                .font(.system(size: 30))
                .foregroundColor(Color.black)
 
            // Routine Form
            NavigationLink(destination: RoutineForm()){
                VStack {
                    Text("Routines")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(Color.lightGreen)
                    Text("Daily/Weekly/Monthly")
                        .padding(1)
                    Text("Repetitive tasks that you MUST do and wish to be reminded.")
                        .padding()
                        .font(.system(size: 18))
                         
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.darkGreen)
                .cornerRadius(20)
                .padding(.horizontal, 20)
            }
 
            //Habit Form
            NavigationLink(destination: HabitForm()){
                VStack {
                    Text("Habits")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(Color.lightGreen)
                    Text("Daily/Weekly/Monthly")
                        .padding(1)
                    Text("Behaviors that you DESIRE to keep and wish to be tracked.")
                        .padding()
                        .font(.system(size: 18))
                         
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.darkGreen)
                .cornerRadius(20)
                .padding(.horizontal, 20)
            }
            
            // Goals Form
            NavigationLink(destination: GoalsForm()){
                VStack {
                    Text("Goals")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(Color.lightGreen)
                    Text("Quarterly/Yearly")
                        .padding(1)
                    Text("Long-term objectives that you DETERMINE to achieve and wish to be tracked.")
                        .padding()
                        .font(.system(size: 18))
                         
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.darkGreen)
                .cornerRadius(20)
                .padding(.horizontal, 20)
            }
        }
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}

