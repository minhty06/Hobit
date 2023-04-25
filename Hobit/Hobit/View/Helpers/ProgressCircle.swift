//
//  ProgressCircle.swift
//  Hobit
//
//  Created by Lori Merone on 4/11/23.
//

import SwiftUI

struct ProgressCircle: View {
    @EnvironmentObject var routineViewModel: HobitViewModel
    
    @State private var completedHabit = false
    
    var habit: Habit
    


    var body: some View {
        var completedTaskCount = habit.tasks.reduce(0) { count, task in
            if task.completed {
                return count + 1
            } else {
                return count
            }
        }
        Button(action: {
            // Toggle the showSubcircles variable when the user clicks on the title
            completedHabit.toggle()
        }){
            ZStack {
                if completedHabit {
                    Circle()
                        .stroke(
                            Color.lightGreen.opacity(0.5),
                            lineWidth: 8
                        )
                    Circle()
                        .trim(from: 0, to: (CGFloat(completedTaskCount) / CGFloat(habit.habitDuration)))
                        .stroke(
                            Color.lightGreen,
                            // 1
                            style: StrokeStyle(
                                lineWidth: 8,
                                lineCap: .round
                            )
                        )
                        .rotationEffect(.degrees(-90))
                    Text("\(completedTaskCount)/\(habit.habitDuration)")
                        .font(.title2)
                        .foregroundColor(Color.white)
                }
                else {
                    Circle()
                        .stroke(
                            Color.lightGrey.opacity(0.5),
                            lineWidth: 8
                        )
                    Circle()
                        .trim(from: 0, to: (CGFloat(completedTaskCount) / CGFloat(habit.habitDuration)))
                        .stroke(
                            Color.lightGrey,
                            // 1
                            style: StrokeStyle(
                                lineWidth: 8,
                                lineCap: .round
                            )
                        )
                        .rotationEffect(.degrees(-90))
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                }
            }
            .frame(width: 60, height: 60)
            
        }
    }
}

struct ProgressCircle2: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.lightGrey.opacity(0.5),
                    lineWidth: 10
                )
            Circle()
                .trim(from: 0, to: 4/12)
                .stroke(
                    Color.lightGrey,
                    // 1
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
            Text("4/12")
                .font(.title2)
                .foregroundColor(Color.white)
        }
        .frame(width: 80, height: 80
        )
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var habit = HobitViewModel().habit
    static var previews: some View {
        ProgressCircle(habit: habit[0])
        
    }
}
