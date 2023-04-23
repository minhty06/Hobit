//
//  HabitDashboard.swift
//  Hobit
//
//  Created by Lori Merone on 4/11/23.
//

import SwiftUI

struct HabitDashboard: View {
    @EnvironmentObject var viewModel: RoutineViewModel
    @State private var isMainCircleComplete = false
    
    @State private var showSubcircles = false

    @State private var showDetail = false
    var routine: Routine
    
    let rows = [
        GridItem(.adaptive(minimum: 50))
    ]
    var body: some View {
        VStack (alignment: .leading){
            Button(action: {
                // Toggle the showSubcircles variable when the user clicks on the title
                showDetail.toggle()
            }) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Bedtime Reading")
                            .foregroundColor(Color.lightGreen)
                            .multilineTextAlignment(.leading)
                            .font(.title)
                            .padding([.leading,.top], 15)
                        
                        
                        
                        Text("10pm daily. Tap to see more...")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding([.leading,.bottom], 15)
                    }
                    Spacer()
                    ProgressCircle()
                        .padding(20)
                }

            }
            Group {
                if showDetail {
                    
                    LazyHGrid(rows: rows,
                              alignment: .top, spacing: 5){
                        ForEach(routine.tasks.indices) { index in
                            if routine.tasks[index].subcircleCompletion {
                                Circle()
                                    .foregroundColor(Color.lightGreen)
                                    .frame(width: 10, height: 10)
                            } else {
                                Circle()
                                    .foregroundColor(Color.lightGrey)
                                    .frame(width: 10, height: 10)
                            }
                            
                            
                        }.padding(5)
                    }.padding(.leading)
        
                }
            }.padding(.bottom)
        }
        .background(Color.darkGreen,
                    in: RoundedRectangle(cornerRadius: 20))
    }
}

struct HabitDashboard_Previews: PreviewProvider {
    static var previews: some View {
        HabitDashboard(routine: Routine())
    }
}
