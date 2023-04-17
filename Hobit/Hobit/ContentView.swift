//
//  ContentView.swift
//  Hobit
//
//  Created by Minh Ton on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    
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
                        Button(action: {
                        presented.toggle()
                        }, label: {
                            Text("Close")
                        })
                    }
                })
                
                switch selectionIndex{
                case 0:
                    NavigationView {
                        HomeView()
                    }
                case 1:
                    NavigationView {
                        VStack {
                            Text("Page 2: shows the full list of routines")
                        }
                        .navigationTitle("Routines")
                    }
                case 2:
                    NavigationView {
                        VStack {
                            Text("3rd Screen")
                        }
                        .navigationTitle("Add")
                    }
                case 3:
                    NavigationView {
                        VStack {
                            Text("Page 3: shows the full list of habits")
                        }
                        .navigationTitle("Habits")
                    }
                default:
                    NavigationView {
                        VStack {
                            Text("Page 4: shows the full list of goals")
                        }
                        .navigationTitle("Goals")
                    }
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
