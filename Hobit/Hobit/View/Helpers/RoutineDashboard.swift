


import SwiftUI

struct RoutineDashboard: View {
    @EnvironmentObject var viewModel: RoutineViewModel
    @State private var isMainCircleComplete = false
    @State private var showSubcircles = false
    var routine: Routine

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Button(action: {
                        // Toggle the showSubcircles variable when the user clicks on the title
                        showSubcircles.toggle()
                    }) {
                        Text(routine.routineName)
                            .foregroundColor(Color.lightGreen)
                            .multilineTextAlignment(.leading)
                            .font(.title)
                            .padding(.leading, 5)
                    }

                    Text(routine.routineDetails)
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

                    ForEach(routine.tasks.indices) { index in
                        HStack{
                            Text(routine.tasks[index].taskName)
                                .foregroundColor(Color.lightGreen)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 5)
                            Spacer()
                            SubCircleView(

                                subcircleCompletion: subcircleCompletionBinding(for: viewModel.routine.tasks),
                                index: index)
                                .padding(.horizontal, 10)

                        }
                    }.padding(5)
                }
            }
            Spacer()
        }.padding()
            .background(Color.darkGreen,
                        in: RoundedRectangle(cornerRadius: 20))

    }

    func subcircleCompletionBinding(for tasks: [Task]) -> Binding<[Bool]> {

        return Binding<[Bool]>(
            get: { tasks.map { $0.subcircleCompletion } },
            set: { newValue in
                for (index, completion) in newValue.enumerated() {
                    viewModel.setTaskCompletion(atIndex: index, toCompletion: completion)

                }
                checkCompletion()
            }
        )
    }


    private func checkCompletion() {
        // Check if all subcircles are complete
        // If yes, set main circle to complete
        // If no, leave main circle incomplete
        print("test1")
        isMainCircleComplete = !viewModel.routine.tasks.contains(where: { !$0.subcircleCompletion })


    }
}


struct RoutineDashboard_Previews: PreviewProvider {
    static var previews: some View {
        let routine = Routine(routineName: "Morning Routine", routineDetails: "My daily morning routine", tasks: [
            Task(taskName: "Task 1", subcircleCompletion: false),
            Task(taskName: "Task 2", subcircleCompletion: false),
            Task(taskName: "Task 3", subcircleCompletion: false)
        ])

        return RoutineDashboard(routine: routine)
            .environmentObject(RoutineViewModel(routine: routine))
       }
}


