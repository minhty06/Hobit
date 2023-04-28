//
//  RoutineView.swift
//  Hobit
//
//  Created by Han Gao on 4/22/23.
//

import SwiftUI

struct HabitView: View {
    @EnvironmentObject var viewModel: HobitViewModel
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Habits")
                        .font(.largeTitle.weight(.bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .padding(.bottom, 8)
                    Image("Rock")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .mask { RoundedRectangle(cornerRadius: 50, style: .continuous) }
                }
                .padding(.horizontal)
                .padding(.bottom)
                VStack(spacing: 40) {
                    
                    // Habits dashboard link
                    VStack {
                        VStack(spacing: 7) {
                            ForEach(viewModel.model.habitList) { habit in
                                HabitDashboard(habit: habit)
                                
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        HabitView().environmentObject(HobitViewModel())
    }
}
