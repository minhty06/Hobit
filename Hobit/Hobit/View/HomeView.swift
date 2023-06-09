//
//  HomeView.swift
//  Hobit
//
//  Created by Minh Ton on 4/12/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HobitViewModel
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text("Hobit")
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
                        Text("Routines".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .font(.title2.weight(.medium))
                            .foregroundColor(.primary)
                        VStack(spacing: 7) {
                            //Place routine dashboard here
                            ForEach(viewModel.model.routineList) { routine in
                                RoutineDashboard(routine: routine)
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
                VStack(spacing: 40) {
                    VStack {
                        Text("Habits".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .font(.title2.weight(.medium))
                            .foregroundColor(.primary)
                        VStack(spacing: 7) {
                            //Element here
                            ForEach(viewModel.model.habitList) { habit in
                                HabitDashboard(habit: habit)
                            }
                            
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
                VStack(spacing: 40) {
                    VStack {
                        Text("Goals".uppercased())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .font(.title2.weight(.medium))
                            .foregroundColor(.primary)
                        VStack(spacing: 7) {
//                            GoalDashboard(routine: Routine())
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 10)
            .padding(.bottom, 150)
            }

        }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {


        HomeView().environmentObject(HobitViewModel())
    }
}
