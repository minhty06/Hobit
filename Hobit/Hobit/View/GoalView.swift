//
//  RoutineView.swift
//  Hobit
//
//  Created by Han Gao on 4/22/23.
//

import SwiftUI

struct GoalView: View {
    @EnvironmentObject var viewModel: RoutineViewModel
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Goals")
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
                    VStack {
                        VStack(spacing: 7) {
                            //Place routine dashboard here
                            RoutineDashboard(routine: Routine())
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
