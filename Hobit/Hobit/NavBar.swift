//
//  NavBar.swift
//  Hobit
//
//  Created by Minh Ton on 4/12/23.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        VStack(spacing: 10) {
            Divider()
            HStack(spacing: 10) {
                
                //Home
                VStack(spacing: 4) {
                    Image(systemName: "house")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .frame(height: 26)
                        .clipped()
                    Text("Home")
                        .font(.caption2)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 45)
                .clipped()
                .foregroundColor(Color.lightGreen)
                
                //Routines
                VStack(spacing: 4) {
                    Image(systemName: "repeat.circle")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .frame(height: 26)
                        .clipped()
                    Text("Routines")
                        .font(.caption2)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 45)
                .clipped()
                .foregroundColor(.white)
                
                //Add button
                VStack(spacing: 4) {
                    Image(systemName: "plus.circle.fill")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .frame(height: 26)
                        .clipped()
                        .foregroundColor(Color.lightGreen)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 45)
                .clipped()
                .scaleEffect(2, anchor: .center)
                .offset(x: 0, y: 0)
                
                //Habits
                VStack(spacing: 4) {
                    Image(systemName: "timer.circle")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .frame(height: 26)
                        .clipped()
                    Text("Habits")
                        .font(.caption2)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 45)
                .clipped()
                .foregroundColor(.white)
                
                //Goals
                VStack(spacing: 4) {
                    Image(systemName: "target")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .frame(height: 26)
                        .clipped()
                    Text("Goal")
                        .font(.caption2)
                }
                
                //Nav bar adjustmnets
                .frame(maxWidth: .infinity)
                .clipped()
                .frame(height: 45)
                .clipped()
                .foregroundColor(.white)
            }
            .padding(.horizontal, 15)
            .padding(.top, 5)
        }
        .frame(height: 84, alignment: .top)
        .clipped()
        .background {
            Rectangle()
            //Remove if we don't like the gray
                .background(Material.bar)
        }
        .background(Color.darkGreen)
    }
}
struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
