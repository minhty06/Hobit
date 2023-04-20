//
//  PublicData.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import SwiftUI

struct PublicData {
    var routine: Routine
    
    init() {
        var task1 = Task(taskName: "Task 1", subcircleCompletion: false)
        var task2 = Task(taskName: "Task 2", subcircleCompletion: false)
        var task3 = Task(taskName: "Task 3", subcircleCompletion: false)

        routine = Routine(routineName: "Morning Routine", routineDetails: "My daily morning routine", tasks: [task1, task2, task3])
    }
}


