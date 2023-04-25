//
//  TaskRow.swift
//  Hobit
//
//  Created by Lori Merone on 4/23/23.
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var routineViewModel: HobitViewModel
    var task: Task
    var routine: Routine
    var body: some View {
        HStack{
            Text(task.taskName)
                .foregroundColor(Color.lightGrey)
                .multilineTextAlignment(.leading)
                .padding(.leading, 5)
            Spacer()
            ZStack {
                Button(action: {
                    // Toggle the showSubcircles variable when the user clicks on the title
                    routineViewModel.setCompleted(routine, task)
                }){
                    if task.completed {
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
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var routine = HobitViewModel().routine
    static var previews: some View {
        TaskRow(task: routine[0].tasks[0], routine: routine[0])
    }
}
