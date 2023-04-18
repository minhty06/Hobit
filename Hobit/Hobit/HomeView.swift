//
//  HomeView.swift
//  Hobit
//
//  Created by Minh Ton on 4/12/23.
//

import SwiftUI

struct HomeView: View {
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
                            
                            RoutineDashboard()
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
                            HabitDashboard()
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
                            HStack(spacing: 10) {
                                Image("Rock2")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipped()
                                    .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                                VStack(alignment: .leading) {
                                    Text("Goals Placeholder")
                                        .font(.system(size: 16, weight: .medium, design: .default))
                                    Text("March 9th")
                                        .font(.footnote)
                                        .foregroundColor(.secondary)
                                }
                                .font(.subheadline)
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundColor(Color(.displayP3, red: 234/255, green: 76/255, blue: 97/255))
                                    .font(.title3)
                            }
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
        HomeView()
    }
}
