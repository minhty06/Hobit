


import SwiftUI

struct RoutineDashboard: View {
    @EnvironmentObject var viewModel: HobitViewModel
    @State private var isMainCircleComplete = false
    @State private var showSubcircles = false
    var routine: Routine
    
    var body: some View {
        let completedTaskCount = routine.tasks.reduce(0) { count, task in
            if task.completed {
                return count + 1
            } else {
                return count
            }
        }
        let totalTasks = routine.tasks.count
            VStack {
                Button(action: {
                    // Toggle the showSubcircles variable when the user clicks on the title
                    showSubcircles.toggle()
                }) {
                HStack {
                    VStack(alignment: .leading) {
                        
                        Text(routine.routineName)
                            .foregroundColor(Color.lightGreen)
                            .multilineTextAlignment(.leading)
                            .font(.title)
                            .padding(.leading, 5)
                        
                        Text(routine.routineDetails)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 5)
                        
                    }
                    Spacer()
                    //                MainCircleView(isComplete: isMainCircleComplete)
                    //                    .padding()
                    
                    if totalTasks == completedTaskCount {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.horizontal, 10)
                            .foregroundColor(.lightGreen)
                    } else {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.horizontal, 10)
                            .foregroundColor(.lightGrey)
                    }
                    
                }
            }
                Group {
                    if showSubcircles {
                        ForEach(routine.tasks.indices, id: \.self) { index in
                            TaskRow(task: routine.tasks[index], routine: routine)
                        }.padding(5)
                    }
                    
                    
                }                
            }.padding()
            .background(Color.darkGreen,
                            in: RoundedRectangle(cornerRadius: 20))
        
        }
            
    }



    
    struct RoutineDashboard_Previews: PreviewProvider {
        static var routine = HobitViewModel().routine
        static var previews: some View {
            RoutineDashboard(routine: routine[0])
        }
    }


