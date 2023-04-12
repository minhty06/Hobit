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
                        .padding(.leading, 20.0)
                
                    
                    
                    Text("Title detail. More info!")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20)
                }
                Spacer()
                ProgressCircle()
                    .padding(20)
            }
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .padding(4.0))

    }
}

struct HabitDashboard_Previews: PreviewProvider {
    static var previews: some View {
        HabitDashboard()
    }
}
