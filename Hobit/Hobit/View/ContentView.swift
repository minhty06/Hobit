//
//  ContentView.swift
//  Hobit
//
//  Created by Minh Ton on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = HobitViewModel()
    
    @State var selectionIndex = 0
    @State var presented = false
    
    let icons = [
        "house",
        "clock.badge.checkmark",
        "plus",
        "square.and.pencil",
        "target"
    ]
    
    var body: some View {
        VStack {
            // Content
            ZStack {
                
                // Add a blank page for adding new content when "+" is clicked
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    VStack {
                        AddView()
                        Button(action: {
                        presented.toggle()
                        }, label: {
                            Text("Cancel")
                                .padding(10)
                                .foregroundColor(Color.lightGreen)
                                .fontWeight(.heavy)
                        })
                    }
                })
                
                switch selectionIndex{
                case 0:
                    NavigationView {
                        HomeView()
                    }
                    .environmentObject(viewModel)
                case 1:
                    NavigationView {
                        VStack {
                            Text("Page 2: shows the full list of routines")
                        }
                        .navigationTitle("Routines")
                    }
                    .environmentObject(viewModel)
                case 2:
                    NavigationView {
                        HomeView()
                    }
                    .environmentObject(viewModel)
                case 3:
                    NavigationView {
                        VStack {
                            Text("Page 3: shows the full list of habits")
                        }
                        .navigationTitle("Habits")
                    }
                    .environmentObject(viewModel)
                default:
                    NavigationView {
                        VStack {
                            Text("Page 4: shows the full list of goals")
                        }
                        .navigationTitle("Goals")
                    }
                    .environmentObject(viewModel)
                }
            }
            
            HStack {
                ForEach(0..<5, id: \.self) { number in
                    Spacer()
                    Button (action: {
                        if number == 2 {
                            presented.toggle()
                        }
                        self.selectionIndex = number
                    }, label: {
                        if number == 2 {
                            Image(systemName: icons[number])
                                .background(Color.lightGreen)
                                .frame(width: 50, height: 50)
                                .cornerRadius(50)
                                .foregroundColor(.white)
                                .font(.system(size:50, weight: .medium, design: .default)
                                )
                        }
                        
                        else {
                            Image(systemName: icons[number])
                                .foregroundColor(selectionIndex == number ? Color.lightGreen : Color.gray)
                                .font(.system(size:25, weight: .medium, design: .rounded))
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
