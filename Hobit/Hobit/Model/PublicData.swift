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
        let task1 = Task(taskName: "Make Bed", subcircleCompletion: false)
        let task2 = Task(taskName: "Brush Teeth", subcircleCompletion: false)
        let task3 = Task(taskName: "Make Coffee", subcircleCompletion: false)

        routine = Routine(routineName: "Morning Routine", routineDetails: "My daily morning routine", tasks: [task1, task2, task3])
    }
}


