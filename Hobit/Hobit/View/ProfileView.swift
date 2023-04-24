//
//  ProfileView.swift
//  Hobit
//
//  Created by Han Gao on 4/23/23.
//

//import SwiftUI
//
//struct ProfileView: View {
//    
//    @State private var enableNotification = true
//    
//    private var backButton: some View {
//        Button(action: {}) {
//            Image(systemName: "chevron.left")
//                .scaleEffect(0.83)
//                .font(Font.title.weight(.medium))
//        }
//    }
//    
//    var body: some View {
//        
//        NavigationView {
//            
//            VStack {
//                
//                NavigationLink(destination: ContentView()) {
//                backButton
//                .padding(.horizontal)
//                Spacer()}
//                
//                Image("Rock")
//                .resizable()
//                .clipped()
//                .frame(width: 100, height: 100, alignment: .center)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.lightGreen, lineWidth: 2.0))
//                .padding(.bottom)
//                
//                Form {
//                    
//                    Section(header: Text("Basic Information")) {
//                        HStack {
//                            Text("Name")
//                            Spacer(minLength: 100)
//                            Text("Rock")
//                        }
//                        
//                        HStack {
//                            Text("Account")
//                            Spacer(minLength: 100)
//                            Text("rock@gmail.com")
//                        }
//                        
//                        HStack {
//                            Text("Password")
//                            Spacer(minLength: 100)
//                            Text("..........")
//                        }
//                        
//                        Toggle(isOn: $enableNotification) {
//                            Text("Notification")
//                        }
//                    }
//                    Section(header: Text("About")) {
//                        HStack {
//                            Text("Version")
//                            Spacer(minLength: 100)
//                            Text("1.0")
//                        }
//                    }
//                    
//                    Section {
//                        Button(action: {print("Perform an action here...")}) {
//                            Text("Log Out")
//                        }
//                    }
//                    
//                    Section {
//                        Button(action: {print("Perform an action here...")}) {
//                            Text("Delete")
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
