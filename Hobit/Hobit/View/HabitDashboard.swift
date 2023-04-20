//
//  HabitDashboard.swift
//  Hobit
//
//  Created by Lori Merone on 4/11/23.
//

import SwiftUI

struct HabitDashboard: View {
    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text("Habit Title")
                        .foregroundColor(Color.lightGreen)
                        .multilineTextAlignment(.leading)
                        .font(.title)
                        .padding([.leading,.top], 15)
                
                    
                    
                    Text("Title detail. More info! If this were a really long paragraph that would be crazyand i think it adapts properly if needed or not shit that looks bad unless")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding([.leading,.bottom], 15)
                }
                Spacer()
                ProgressCircle()
                    .padding(20)
            }
                .background(
                    RoundedRectangle(cornerRadius: 20))

    }
}

struct HabitDashboard_Previews: PreviewProvider {
    static var previews: some View {
        HabitDashboard()
    }
}
