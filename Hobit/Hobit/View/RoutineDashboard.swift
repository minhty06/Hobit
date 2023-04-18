//
//  HabitDashboard.swift
//  Hobit
//
//

import SwiftUI

struct RoutineDashboard: View {
    @EnvironmentObject var viewModel: HobitViewModel
    @State private var isMainCircleComplete = false
    @State private var showSubcircles = false
    var routines: [Routine]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Button(action: {
                        // Toggle the showSubcircles variable when the user clicks on the title
                        showSubcircles.toggle()
                    }) {
                        Text("Routine Title")
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
                    
                    ForEach(viewModel.RoutinePosts.indices) { index in
                        HStack{
                            Text(viewModel.RoutinePosts[index].name)
                                .foregroundColor(Color.lightGreen)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Spacer()
                            SubCircleView(
                                index: index,
                                subcircleCompletion: subcircleCompletionBinding(for: viewModel.RoutinePosts),
                                routine: viewModel.RoutinePosts[index])
                                .padding(.horizontal, 10)
                            



                        }
                    }.padding(5)
                }
            }
            Spacer()
        }.padding()
        .background(
            RoundedRectangle(cornerRadius: 20))
        
    }
    
    func subcircleCompletionBinding(for routines: [Routine]) -> Binding<[Bool]> {
        return Binding<[Bool]>(
            get: { routines.map { $0.subcircleCompletion } },
            set: { newValue in
                for (index, completion) in newValue.enumerated() {
                    viewModel.setRoutineCompletion(atIndex: index, toCompletion: completion)
                }
                checkCompletion()
            }
        )
    }

    
    private func checkCompletion() {
        // Check if all subcircles are complete
        // If yes, set main circle to complete
        // If no, leave main circle incomplete
        isMainCircleComplete = !viewModel.RoutinePosts.contains(where: { !$0.subcircleCompletion })
    }
}


struct RoutineDashboard_Previews: PreviewProvider {
    static var previews: some View {
           let viewModel = HobitViewModel()
           let sampleData: [Routine] = [
               Routine(name: "Routine 1", subcircleCompletion: false),
               Routine(name: "Routine 2", subcircleCompletion: false),
               Routine(name: "Routine 3", subcircleCompletion: false),
               Routine(name: "Routine 4", subcircleCompletion: false),
               Routine(name: "Routine 5", subcircleCompletion: false)
           ]
        return RoutineDashboard(routines: sampleData)
               .environmentObject(viewModel)
       }
}
