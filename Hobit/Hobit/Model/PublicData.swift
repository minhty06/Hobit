//
//  PublicData.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import SwiftUI

struct PublicData {
    
    var routineList: [Routine] = [
        Routine(routineName: "Morning", routineDetails: "Tap to see all morning routines...", tasks: [
            Task(taskName: "Make Bed", completed: false),
            Task(taskName: "Brush Teeth", completed: true),
            Task(taskName: "Make Coffee Cause Sexy", completed: false),
            Task(taskName: "Shower", completed: true)
        ]),
        Routine(routineName: "Afternoon", routineDetails: "Tap to see all morning routines...", tasks: [
            Task(taskName: "Go to Bed", completed: false),
            Task(taskName: "Brush Teeth", completed: true),
            Task(taskName: "Moisturize", completed: false),
            Task(taskName: "Shower", completed: true)
        ])
    ]{
        didSet {
                    print("Routine list updated. New count: \(routineList)")
                }
    }
    
    mutating func toggleTaskCompletion(in routine: Routine, for task: Task) {
        guard let routineIndex = routineList.firstIndex(where: { $0.id == routine.id }),
              let taskIndex = routineList[routineIndex].tasks.firstIndex(where: { $0.id == task.id }) else {
            return
        }
        
        routineList[routineIndex].tasks[taskIndex].completed.toggle()
    }
    
}
