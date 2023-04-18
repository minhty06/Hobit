//
//  HabitDashboard.swift
//  Hobit
//
//

import SwiftUI

struct GoalDashboard: View {
     @State private var subcircleCompletion = [false, false, false, false, false]
     @State private var isMainCircleComplete = false
     @State private var showSubcircles = false
     
     var body: some View {
         VStack {
             HStack {
                 VStack(alignment: .leading) {
                     Button(action: {
                         // Toggle the showSubcircles variable when the user clicks on the title
                         showSubcircles.toggle()
                     }) {
                         Text("Goal Title")
                             .foregroundColor(Color.lightGreen)
                             .multilineTextAlignment(.leading)
                             .font(.title)
                             .padding(.leading, 5)
                     }
                     
                     Text("Title detail. More info!")
                         .foregroundColor(Color.white)
                         .multilineTextAlignment(.leading)
                         .padding(.leading, 5)
                 }
                 Spacer()
                 MainCircleView(isComplete: isMainCircleComplete)
                     .padding()
                 
                 
             }
             
             Group {
                 if showSubcircles {
                     
                     ForEach(0..<subcircleCompletion.count) { index in
                         HStack{
                             Text("Routine Title")
                                 .foregroundColor(Color.lightGreen)
                                 .multilineTextAlignment(.leading)
                                 .padding(.leading, 5)
                             Spacer()
                             SubCircleView(index: index, completionHandler: { subcircleIndex, isComplete in
                                 subcircleCompletion[subcircleIndex] = isComplete
                                 checkCompletion()
                             }).padding(.horizontal, 10)
                         }
                     }.padding(5)
                 }
             }
             Spacer()
         }.padding()
         .background(
             RoundedRectangle(cornerRadius: 20))
         
     }
     
     private func checkCompletion() {
         // Check if all subcircles are complete
         // If yes, set main circle to complete
         // If no, leave main circle incomplete
         isMainCircleComplete = !subcircleCompletion.contains(false)
     }
    
}

struct GoalDashboard_Previews: PreviewProvider {
    static var previews: some View {
        GoalDashboard()
    }
}
