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
    var newTask: String = ""
}

struct Task {
    var taskName: String
    var subcircleCompletion: Bool
}

let sampleTasks = [
    Task(taskName: "Make Bed", subcircleCompletion: false),
    Task(taskName: "Brush Teeth", subcircleCompletion: true),
    Task(taskName: "Make Coffee", subcircleCompletion: false)
]

let sampleRoutine = Routine(
    routineName: "Morning Routine",
    routineDetails: "My morning routine",
    tasks: sampleTasks,
    newTask: ""
)

let sampleTasks2 = [
    Task(taskName: "Make Bed2", subcircleCompletion: false),
    Task(taskName: "Brush Teeth2", subcircleCompletion: true),
    Task(taskName: "Make Coffee2", subcircleCompletion: false)
]

let sampleRoutine2 = Routine(
    routineName: "Morning Routine2",
    routineDetails: "My morning routine2",
    tasks: sampleTasks2,
    newTask: ""
)



//struct RoutineForm: View {
//    @EnvironmentObject var viewModel: HobitViewModel
//    @State private var routineName: String = ""
//    @State private var routineDetail: String = ""
//    @State private var tasks: [String] = []
//    @State private var newTask: String = ""
