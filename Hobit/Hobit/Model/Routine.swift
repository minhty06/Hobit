//
//  Routine.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import Foundation


struct Routine: Identifiable {
    var id: UUID = UUID()
    var routineName: String = ""
    var routineDetails: String = ""
    var tasks: [Task] = []
}

struct Task: Identifiable {
    var id: UUID = UUID()
    var taskName: String
    var completed: Bool = false
}

let sampleTasks = [
    Task(taskName: "Make Bed", completed: false),
    Task(taskName: "Brush Teeth", completed: true),
    Task(taskName: "Make Coffee", completed: false)
]

let sampleRoutine = Routine(
    routineName: "Good Morning",
    routineDetails: "Tap to see all morning routines...",
    tasks: sampleTasks
)

let sampleTasks2 = [
    Task(taskName: "Make Bed2", completed: false),
    Task(taskName: "Brush Teeth2", completed: true),
    Task(taskName: "Make Coffee2", completed: false)
]

let sampleRoutine2 = Routine(
    routineName: "Good Evening",
    routineDetails: "Tap to see all evening routines...",
    tasks: sampleTasks2
)



//struct RoutineForm: View {
//    @EnvironmentObject var viewModel: HobitViewModel
//    @State private var routineName: String = ""
//    @State private var routineDetail: String = ""
//    @State private var tasks: [String] = []
//    @State private var newTask: String = ""
